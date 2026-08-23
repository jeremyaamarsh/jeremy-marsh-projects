# Airline Delay Classification (Logistic Regression & Random Forest)

## Project Overview
This project builds a supervised machine‑learning classifier to predict whether an airport–carrier–month combination experienced significant arrival delays (15+ minutes). Using the U.S. Airline Delay Causes dataset, the workflow demonstrates a complete applied ML pipeline: data cleaning, feature engineering, preprocessing, model training, hyperparameter tuning, and evaluation.

Although the dataset originated from a group assignment, **all data preparation, modeling, evaluation, and notebook development in this repository were completed by me**.

## Goals and Objectives
- Load and preprocess monthly airline delay data  
- Engineer a binary target variable indicating significant delays  
- Build a preprocessing pipeline for numeric and categorical features  
- Train Logistic Regression and Random Forest classifiers  
- Tune hyperparameters using GridSearchCV  
- Evaluate models using accuracy, ROC curve, confusion matrix, and classification report  
- Analyze feature importance to understand operational drivers of delays  
- Produce business‑style visuals such as monthly delay trends and airport rankings  

## Techniques and Technologies Used
- Python  
- pandas & NumPy for data cleaning and feature engineering  
- scikit‑learn (Pipeline, ColumnTransformer, LogisticRegression, RandomForestClassifier, GridSearchCV)  
- Matplotlib & Seaborn for visualization  
- ROC AUC, confusion matrix, and classification report for evaluation  
- One‑hot encoding for categorical variables  
- Feature importance analysis for Random Forest  

## Summary of Conclusions
- Random Forest achieved **perfect accuracy** on both training and test sets due to highly separable operational features.  
- Delay behavior is strongly influenced by carrier delay minutes, late aircraft delay minutes, NAS delays, and total arrival delay.  
- Airports vary significantly in delay frequency, with clear seasonal patterns across months.  
- The workflow demonstrates a production‑style ML pipeline suitable for operational forecasting or risk‑flagging systems.  
- With additional enhancements (weather integration, time‑series modeling), this project could evolve into a full predictive dashboard.

## Repository Structure
airline-delay-classification/<br>
│<br>
├── airline-delay-classification.ipynb<br>
└── README.md<br>

## Data Source
Bureau of Transportation Statistics — *Airline On‑Time Performance Data*
Available from the U.S. Department of Transportation’s BTS database.