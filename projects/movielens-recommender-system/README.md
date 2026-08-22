# MovieLens Recommender System (SVD)

## Project Overview
This project builds a simple movie recommender system using the MovieLens *ml-latest-small* dataset. The goal was to take user rating data and use collaborative filtering to find movies similar to a given input movie. I trained an SVD model with the Surprise library to learn movie patterns and identify titles that feel similar based on user ratings.

## Goals and Objectives
- Load and explore the MovieLens ratings and movies data  
- Train an SVD model using collaborative filtering  
- Use the model's learned movie features to measure similarity  
- Build a function that returns 10 similar movies based on a title search  

## Techniques and Technologies Used
- Python  
- Pandas and NumPy  
- Surprise library (SVD, Dataset, Reader)  
- Cosine similarity for movie-to-movie comparison  
- Jupyter Notebook for workflow and documentation  

## Summary of Conclusions
- SVD learns meaningful patterns from user ratings and produces reasonable similarity recommendations  
- Cosine similarity on the learned movie features works well for finding related movies  
- The final function can take a partial movie title and return a list of similar movies based on learned user behavior  

## Repository Structure

movielens-recommender-system/<br>
│
├── movielens_recommender.ipynb<br>
└── README.md<br>

## Data Source
MovieLens *ml-latest-small* dataset.  
Available from GroupLens: https://grouplens.org/datasets/movielens/

The dataset is not included in this repository.