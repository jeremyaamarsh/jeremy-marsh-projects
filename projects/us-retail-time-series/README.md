# U.S. Retail Sales Time Series (ARIMA)

## Project Overview
This project works with U.S. retail sales data where each year is stored in a single row and each month is a separate column. The dataset was reshaped into a proper monthly time series, explored visually, and modeled using ARIMA to forecast retail sales. The goal was to convert a wide-format dataset into a usable time‑series structure and evaluate how well ARIMA performs when predicting the final 12 months.

## Goals and Objectives
- Reshape the dataset from wide format into a monthly time series  
- Visualize long‑term retail sales trends  
- Train an ARIMA model and generate forecasts  
- Compare predictions against the last 12 months of actual data  

## Techniques and Technologies Used
- Python  
- Pandas and NumPy  
- Matplotlib for visualization  
- Statsmodels ARIMA for forecasting  
- Jupyter Notebook for workflow and documentation  

## Summary of Conclusions
- The dataset reshapes cleanly into a continuous monthly series.  
- Retail sales show a steady upward trend over time.  
- The ARIMA model captures the general pattern but has mixed accuracy on short‑term fluctuations.  
- Forecast performance depends heavily on seasonality and recent volatility in the data.  

## Repository Structure
us-retail-time-series/<br>
│<br>
├── us-retail-time-series.ipynb<br>
└── README.md<br>

## Data Source
U.S. retail sales dataset provided for academic use.  
Not publicly available and not included in this repository.