library(tidyverse)
library(ggplot2)

# Summarize totals
make_share <- kia_mke %>%
  summarise(
    kia_hyundai = sum(countKiaHyundaiThefts, na.rm = TRUE),
    other = sum(countOtherThefts, na.rm = TRUE)
  ) %>%
  pivot_longer(everything(), names_to = "category", values_to = "count") %>%
  mutate(
    fraction = count / sum(count),
    ymax = cumsum(fraction),
    ymin = lag(ymax, default = 0)
  )

# Plot
p <- ggplot(make_share, aes(ymax = ymax, ymin = ymin, xmax = 4, xmin = 3, fill = category)) +
  geom_rect() +
  coord_polar(theta = "y") +
  xlim(c(2, 4)) +
  theme_minimal(base_size = 14) +
  theme(
    panel.background = element_rect(fill = "white", color = NA),
    plot.background = element_rect(fill = "white", color = NA),
    axis.text.y = element_text(color = "white"),
    axis.title.y = element_text(color = "white")
  ) +
  scale_fill_manual(
    values = c(
      "kia_hyundai" = "#d62728",
      "other" = "#1f77b4"
    ),
    labels = c(
      "kia_hyundai" = "Kia/Hyundai",
      "other" = "Other Makes"
    )
  ) +
  labs(
    fill = "Category"
  )


print(p)

ggsave("plots/donut_kia_mke.png", p, width = 8, height = 6, dpi = 300)
