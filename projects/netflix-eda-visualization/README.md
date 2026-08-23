# Netflix Titles Exploratory Data Analysis (EDA)

## Project Overview
This project explores the Netflix Titles dataset sourced from Kaggle, which contains metadata for movies and TV shows available on the platform. The goal was to perform a structured exploratory data analysis (EDA) to understand how content type, genre, maturity rating, and movie duration vary across Netflix’s catalog. The workflow demonstrates core data‑analysis skills: loading data, cleaning categorical fields, forming research questions, and building visualizations that support meaningful insights.

## Goals and Objectives
- Load and inspect the Netflix Titles dataset  
- Clean and preprocess genre and rating fields  
- Analyze how movies vs. TV shows are distributed across genres  
- Examine maturity rating patterns across Netflix content  
- Visualize movie duration trends by rating  
- Explore how genre and rating interact using bivariate plots  

## Techniques and Technologies Used
- Python  
- Pandas for data cleaning and manipulation  
- Matplotlib & Seaborn for visualizations  
- Descriptive statistics and categorical analysis  
- Countplots, boxplots, and multi‑category comparisons  

## Summary of Conclusions
- Movies dominate most genres, especially International Movies, Dramas, and Comedies.  
- TV shows appear more frequently in genres such as International TV, TV Dramas, and Docuseries.  
- Maturity ratings skew heavily toward TV‑MA, TV‑14, and TV‑PG, showing Netflix’s emphasis on mature content while still supporting family‑friendly programming.  
- Movie durations are generally consistent across ratings, typically ranging from 80–120 minutes regardless of maturity level.  
- Genre and rating are closely related: Dramas and International Movies skew mature, while Children & Family content is primarily TV‑Y and TV‑PG.  

Overall, the dataset suggests Netflix’s content strategy emphasizes adult viewership while still maintaining a meaningful amount of youth‑oriented content.

## Repository Structure
netflix-eda-visualization/<br>
│<br>
├── netflix-eda-visualization.ipynb<br>
└── README.md<br>

## Data Source
Kaggle. (2020). *Netflix Movies and TV Shows*  
https://www.kaggle.com/datasets/shivamb/netflix-shows