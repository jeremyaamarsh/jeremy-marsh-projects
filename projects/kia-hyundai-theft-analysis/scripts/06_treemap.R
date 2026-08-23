library(tidyverse)
library(treemapify)

# Summarize Kia/Hyundai thefts by city
kia_tree <- kia_thefts %>%
  group_by(city, state) %>%
  summarise(total_kia_hyundai = sum(countKiaHyundaiThefts, na.rm = TRUE)) %>%
  ungroup()

# Plot treemap with red gradient
p5 <- ggplot(kia_tree, aes(
  area = total_kia_hyundai,
  fill = total_kia_hyundai,
  label = paste(city, state, "\n", total_kia_hyundai)
)) +
  geom_treemap() +
  geom_treemap_text(colour = "white", place = "centre", grow = TRUE) +
  scale_fill_gradientn(
    colors = c("#F5B7B1", "#E74C3C", "#C0392B"),
    name = "Total Thefts"
  ) +
  labs(
    subtitle = "Cities with the highest total Kia/Hyundai thefts"
  ) +
  theme_minimal()

print(p5)

ggsave("plots/treemap_kia_thefts.png", p5, width = 10, height = 6, dpi = 300)
