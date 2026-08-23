library(tidyverse)
library(readxl)
library(ggplot2)
library(lubridate)

# Load VICE dataset
vice_raw <- read_excel("data/Motherboard VICE News Kia Hyundai Theft Data.xlsx")

# Extract subheaders
subheaders <- as.character(vice_raw[1, ])

# Build new headers
original_headers <- colnames(vice_raw)
new_headers <- original_headers

for (i in seq(2, length(original_headers), by = 3)) {
  city <- original_headers[i]
  new_headers[i]   <- paste0(city, "_", subheaders[i])
  new_headers[i+1] <- paste0(city, "_", subheaders[i+1])
  new_headers[i+2] <- paste0(city, "_", subheaders[i+2])
}

colnames(vice_raw) <- new_headers

# Rename first column
colnames(vice_raw)[1] <- "Date"

# Remove subheader row
vice_clean <- vice_raw[-1, ]

# Convert Date
vice_clean$Date <- as.Date(vice_clean$Date)

# Convert other columns to numeric
vice_numeric <- vice_clean %>%
  mutate(across(-Date, ~ suppressWarnings(as.numeric(.))))

# Get latest year
latest_year <- max(year(vice_numeric$Date), na.rm = TRUE)

vice_latest <- vice_numeric %>%
  filter(year(Date) == latest_year)

# Identify cities
kia_cols <- grep("_Kia/Hyundais$", names(vice_latest), value = TRUE)
cities <- sub("_Kia/Hyundais$", "", kia_cols)

# Build Kia + Other dataset
vice_stack <- map_dfr(cities, function(city) {
  kia_col  <- paste0(city, "_Kia/Hyundais")
  all_col  <- paste0(city, "_All")
  tibble(
    city = city,
    kia = vice_latest[[kia_col]],
    other = vice_latest[[all_col]] - vice_latest[[kia_col]]
  )
})

# Collapse to totals
vice_stack_totals <- vice_stack %>%
  group_by(city) %>%
  summarise(
    kia = sum(kia, na.rm = TRUE),
    other = sum(other, na.rm = TRUE),
    total = kia + other
  )

# Reshape for stacked bar
vice_stack_long <- vice_stack_totals %>%
  pivot_longer(
    cols = c(kia, other),
    names_to = "type",
    values_to = "count"
  )

# Build stacked bar chart
p6 <- ggplot(
  vice_stack_long,
  aes(x = reorder(city, total), y = count, fill = type)
) +
  geom_bar(stat = "identity") +
  coord_flip() +
  labs(
    title = paste0("Vehicle Theft Composition by City (", latest_year, ")"),
    x = "City",
    y = "Number of Thefts",
    fill = "Theft Type"
  ) +
  scale_fill_manual(
    values = c("kia" = "#d62728", "other" = "#1f77b4"),
    labels = c("Kia/Hyundai", "Other Vehicles")
  ) +
  theme_minimal(base_size = 14) +
  theme(
    axis.text.y = element_text(size = 4, face="bold"),
    axis.text.x = element_text(size = 12),
    legend.position = "right"
  )

print(p6)

# Save plot
ggsave("plots/stacked_bar_vice_latest_year.png", p6, width = 12, height = 6, dpi = 300)
