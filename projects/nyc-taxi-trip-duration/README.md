# NYC Taxi Trip Duration Prediction

## Project Overview
This project uses the NYC Taxi Trip Duration dataset to predict how long a taxi ride will take based on pickup time, passenger count, and pickup/dropoff coordinates. Trip duration is an important operational metric for scheduling, dispatching, and customer experience. The workflow includes exploratory analysis, feature engineering, distance calculation using the Haversine formula, and comparison of multiple regression models.

## Goals and Objectives
- Explore the dataset and identify key drivers of trip duration  
- Engineer time‑based features (hour, day of week, weekend/rush hour flags)  
- Calculate trip distance using the Haversine formula  
- Build and evaluate multiple regression models (baseline, linear regression, random forest)  
- Interpret model performance and analyze feature importance  

## Techniques and Technologies Used
- Python  
- Pandas and NumPy  
- Seaborn and Matplotlib for EDA  
- Scikit‑learn for modeling and evaluation  
- Haversine distance calculation for geographic features  

## Summary of Conclusions
- The Random Forest model performed the best, explaining roughly 73% of the variation in trip duration.  
- Trip distance was the strongest predictor, followed by hour, month, and rush‑hour indicators.  
- Residuals showed no major patterns or bias, indicating a stable model fit.  
- Short trips had higher relative error, which is expected because small delays have a larger proportional impact.  
- The model could be improved with hyperparameter tuning, weather/traffic data, or gradient boosting methods.

## Repository Structure
nyc-taxi-trip-duration/<br>
│<br>
├── nyc-taxi-trip-duration.ipynb<br>
└── README.md<br>

## Data Source
NYC Taxi Trip Duration dataset (provided for academic use).  
Not included in this repository.
