library(tidyverse)
library(ggplot2)
library(sf)
library(maps)

# Compute direction of change
car_map <- car_map %>%
  mutate(
    abs_change = countCarThefts2022 - countCarThefts2019,
    direction = if_else(abs_change > 0, "Increase", "Decrease")
  )

# Remove Alaska
car_map <- car_map %>% 
  filter(latitude < 50)

# Convert to sf
car_map_sf <- st_as_sf(
  car_map,
  coords = c("longitude", "latitude"),
  crs = 4326
)

# Load US basemap
us_map <- st_as_sf(map("state", plot = FALSE, fill = TRUE))

# Build map
p <- ggplot() +
  geom_sf(data = us_map, fill = "gray95", color = "gray70") +
  geom_sf(
    data = car_map_sf,
    aes(color = direction),
    size = 2,
    alpha = 0.9
  ) +
  scale_color_manual(
    values = c(
      "Increase" = "#B2182B",
      "Decrease" = "#2166AC"
    )
  ) +
  labs(
    title = "Direction of Auto Theft Change (2019–2022)",
    subtitle = "Red = increase, Blue = decrease",
    color = "Change Direction"
  ) +
  theme_minimal(base_size = 14) +
  theme(
    panel.background = element_rect(fill = "white", color = NA),
    plot.background = element_rect(fill = "white", color = NA),
    panel.grid = element_blank(),
    axis.title = element_blank(),
    axis.text = element_blank(),
    axis.ticks = element_blank()
  )

print(p)

# Save plot
ggsave("plots/map_direction_change.png", p, width = 10, height = 6, dpi = 300)
