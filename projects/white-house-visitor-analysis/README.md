# White House Visitor Log Analysis

## Project Overview
This project analyzes White House visitor logs collected across multiple CSV files with inconsistent formatting and column names. The goal was to clean and standardize the data, merge all files into a unified dataset, and build visualizations that highlight visitor volume, patterns over time, and operational spikes. The workflow includes data ingestion, column harmonization, date parsing, feature engineering, and several exploratory visuals.

## Goals and Objectives
- Load and merge multiple CSV files with different schemas  
- Standardize column names and convert date fields  
- Create visitor identifiers and time‑based features  
- Build visuals to understand daily, monthly, and category‑based visitor patterns  
- Identify spikes, seasonal trends, and operationally important days  

## Techniques and Technologies Used
- Python  
- Pandas for data cleaning and merging  
- Glob and OS for directory‑based ingestion  
- Dateutil for flexible date parsing  
- Seaborn and Matplotlib for visualization  
- Feature engineering (full name keys, date fields, category grouping)  

## Summary of Conclusions
- Visitor volume varies heavily day‑to‑day, creating operational risk for staffing and scheduling.  
- Monthly patterns show clear seasonal swings in visitor activity.  
- Certain visitees account for a large share of traffic, especially during peak months.  
- High‑volume days can be identified using thresholds and rolling averages.  
- The combined dataset provides a strong foundation for deeper analysis, forecasting, or operational planning.

## Visuals Included
- Daily unique visitors (line chart with spike highlights)  
- Monthly unique visitors (bar chart)  
- Monthly stacked bar chart by visitee category  
- Appointments vs. unique visitors (scatterplot)  
- 7‑day rolling average of visitor volume  
- Threshold crossings (step chart)  

## Repository Structure
white-house-visitor-analysis/<br>
│<br>
├── white-house-visitor-analysis.ipynb<br>
└── README.md<br>

## Data Source
White House visitor logs provided for academic use.  
Not included in this repository.