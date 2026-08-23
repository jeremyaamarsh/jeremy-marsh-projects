library(tidyverse)
library(lubridate)
library(ggplot2)

# Create long format for stacked area chart
kia_mke_long <- kia_mke %>%
  select(date, countKiaHyundaiThefts, countOtherThefts) %>%
  mutate(
    countKiaHyundaiThefts = as.numeric(countKiaHyundaiThefts),
    countOtherThefts = as.numeric(countOtherThefts)
  ) %>%
  pivot_longer(
    cols = c(countKiaHyundaiThefts, countOtherThefts),
    names_to = "category",
    values_to = "thefts"
  )

# Plot
print(
  ggplot(kia_mke_long, aes(x = date, y = thefts, fill = category)) +
    geom_area(alpha = 0.85) +
    labs(
      x = "Date",
      y = "Number of Thefts",
      fill = "Category"
    ) +
    scale_fill_manual(
      values = c(
        "countKiaHyundaiThefts" = "#d62728",
        "countOtherThefts" = "#1f77b4"
      ),
      labels = c(
        "countKiaHyundaiThefts" = "Kia/Hyundai",
        "countOtherThefts" = "Other Makes"
      )
    ) +
    theme_minimal()
)

ggsave(
  filename = "plots/stacked_area_kia_mke.png",
  plot = last_plot(),
  width = 10,
  height = 6,
  dpi = 300
)

