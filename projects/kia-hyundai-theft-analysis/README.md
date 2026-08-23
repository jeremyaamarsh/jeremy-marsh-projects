# Kia/Hyundai Auto Theft Surge Analysis (RStudio Project)

## Project Overview
This project analyzes the surge in Kia and Hyundai vehicle thefts across the United States using multiple publicly available datasets. The goal was to quantify the magnitude of the theft increase, compare Kia/Hyundai trends to other vehicle makes, identify high‑risk cities, and produce executive‑ready visualizations for manufacturer leadership. All data cleaning, transformation, and visualization work was completed in RStudio using a modular script workflow.

## Goals and Objectives
- Quantify the rise in Kia/Hyundai thefts over time  
- Compare theft trends against other vehicle makes  
- Identify cities with concentrated brand‑specific theft activity  
- Visualize national auto‑theft changes from 2019–2022  
- Provide actionable insights for manufacturer risk teams  
- Produce a polished executive briefing summarizing findings  

## Techniques and Technologies Used
- R  
- RStudio project structure (data/, scripts/, plots/)  
- tidyverse for data cleaning and transformation  
- ggplot2 for visualization  
- lubridate for date handling  
- Treemaps, stacked bars, donut charts, trend lines, and geospatial direction maps  
- Multi‑dataset integration and header reconstruction  

## Summary of Conclusions
- Kia/Hyundai thefts surged sharply beginning in 2021, while other makes remained relatively stable.  
- The spike is **make‑specific**, not part of a general theft trend.  
- Theft activity is **highly concentrated** in a small number of cities, indicating localized hotspots rather than nationwide uniform risk.  
- National auto‑theft increases from 2019–2022 amplified visibility of the Kia/Hyundai issue.  
- These patterns support **targeted interventions**, not broad nationwide strategies.

## Repository Structure
kia-hyundai-theft-analysis/<br>
│<br>
├── data/<br>
│   └── Public datasets used for analysis<br>
│<br>
├── plots/<br>
│   └── Exported ggplot visualizations<br>
│<br>
├── scripts/<br>
│   └── R scripts for cleaning, transformation, and visualization<br>
│<br>
├── DSC640_KiaHyundai_Visuals.Rproj<br>
├── .RData<br>
├── .Rhistory<br>
├── kia-hyundai-theft-surge-presentation.pdf<br>
└── README.md<br>

## Data Sources
All datasets are publicly available and included for reproducibility:

- **carTheftsMap.csv** — National auto theft change (2019–2022)  
- **KiaHyundaiMilwaukeeData.csv** — Milwaukee long‑term theft trends  
- **kiaHyundaiThefts.csv** — City‑level Kia/Hyundai vs. other makes  
- **Motherboard VICE News Kia Hyundai Theft Data.xlsx** — National city‑level dataset  

## Notes
All analysis, data cleaning, visualization, and project structure were completed by me.