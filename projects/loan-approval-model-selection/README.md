# Loan Approval Model Selection & Hyperparameter Tuning (Python)

## Project Overview
This project builds and compares multiple machine‑learning models to predict loan approval outcomes using a structured tabular dataset. The workflow demonstrates essential ML techniques including preprocessing, train/test splitting, pipeline construction, hyperparameter tuning, and multi‑model grid search. The goal was to identify the best‑performing model across KNN, Logistic Regression, and Random Forest using cross‑validation and an expanded hyperparameter search space.

## Goals and Objectives
- Load and preprocess the loan approval dataset  
- Encode categorical variables and scale numeric features  
- Train a baseline KNN model  
- Tune KNN hyperparameters using GridSearchCV  
- Expand the search space to include Logistic Regression and Random Forest  
- Identify the best model using cross‑validation  
- Evaluate the best model on the test set  

## Techniques and Technologies Used
- Python  
- pandas & NumPy for data preparation  
- scikit‑learn (Pipeline, MinMaxScaler, KNN, LogisticRegression, RandomForestClassifier, GridSearchCV)  
- Train/test split  
- Dummy variable encoding  
- Hyperparameter tuning across multiple algorithms  

## Summary of Conclusions
- The baseline KNN model achieved moderate performance.  
- Hyperparameter tuning improved KNN slightly, but not significantly.  
- The expanded multi‑model search identified **Logistic Regression** as the best‑performing model.  
- Logistic Regression with tuned `C` and `penalty` achieved the highest cross‑validation accuracy and the best test accuracy (~0.82).  
- This demonstrates the value of searching across multiple algorithms rather than tuning a single model.

## Repository Structure
loan-approval-model-selection/<br>
│<br>
├── loan-approval-model-selection.ipynb<br>
└── README.md<br>

## Data Source
Loan approval dataset (public Kaggle dataset commonly used for ML exercises).  
Included in the notebook for reproducibility.