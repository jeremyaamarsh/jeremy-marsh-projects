library(tidyverse)
library(lubridate)
library(ggplot2)
library(treemapify)
library(sf)
library(readxl)
library(dplyr)

# Load datasets
kia_mke <- read_csv("data/KiaHyundaiMilwaukeeData.csv")
car_map <- read_csv("data/carTheftsMap.csv")
kia_thefts <- read_csv("data/KiaHyundaiThefts.csv")
vice_data <- read_excel("data/Motherboard VICE News Kia Hyundai Theft Data.xlsx")

# Quick preview
glimpse(kia_mke)
glimpse(car_map)
glimpse(kia_thefts)
glimpse(vice_data)

# kia_mke data feature engineering
# Create date column for time series analysis
kia_mke <- kia_mke %>%
  mutate(
    month_num = match(str_to_title(toupper(month)), month.abb),
    date = make_date(year, month_num, 1)
  )




