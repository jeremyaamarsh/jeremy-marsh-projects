library(tidyverse)
library(ggplot2)
library(lubridate)

# Prep data for plotting
kia_mke_long <- kia_mke %>%
  select(date, countKiaHyundaiThefts, countOtherThefts) %>%
  pivot_longer(
    cols = c(countKiaHyundaiThefts, countOtherThefts),
    names_to = "type",
    values_to = "count"
  ) %>%
  mutate(
    type = recode(type,
                  "countKiaHyundaiThefts" = "Kia/Hyundai",
                  "countOtherThefts" = "Other Makes")
  )

# Build line chart
p <- ggplot(kia_mke_long, aes(x = date, y = count, color = type)) +
  geom_line(linewidth = 1.2) +
  scale_color_manual(
    values = c(
      "Kia/Hyundai" = "#B2182B",
      "Other Makes" = "#2166AC"
    )
  ) +
  labs(
    title = "Milwaukee Auto Theft Trends (2019–2022)",
    subtitle = "Kia/Hyundai thefts increased at a much faster rate than other makes",
    x = "Date",
    y = "Number of Thefts",
    color = "Vehicle Type"
  ) +
  theme_minimal(base_size = 14) +
  theme(
    panel.grid.minor = element_blank(),
    plot.background = element_rect(fill = "white", color = NA)
  )

print(p)

# Save plot
ggsave("plots/milwaukee_kia_hyundai_trend.png", p, width = 10, height = 6, dpi = 300)
