# MNIST Digit Classifier (PyTorch CNN)

## Project Overview
This project builds a convolutional neural network (CNN) using PyTorch to classify handwritten digits from the MNIST dataset. The workflow demonstrates the core steps of deep learning: loading data, defining a model architecture, training the network, and evaluating performance. MNIST is a simple dataset, but it provides a clear way to show the fundamentals of image classification using modern deep‑learning tools.

## Goals and Objectives
- Load and preprocess the MNIST dataset  
- Build a CNN with convolution, pooling, dropout, and fully connected layers  
- Train the model using Adam and negative log‑likelihood loss  
- Evaluate test accuracy and visualize sample predictions  

## Techniques and Technologies Used
- Python  
- PyTorch (nn, optim, DataLoader)  
- Torchvision for dataset loading and transforms  
- Matplotlib and Seaborn for visualization  
- Confusion matrix for evaluation  

## Summary of Conclusions
- The CNN trains quickly and reaches high accuracy even with a small number of epochs.  
- Dropout helps stabilize training and reduce overfitting.  
- The model consistently achieves ~98–99% accuracy on MNIST.  
- The workflow demonstrates the essential steps behind building and training a neural network for image classification.

## Repository Structure
mnist-cnn-classifier/<br>
│<br>
├── mnist-cnn-classifier.ipynb<br>
└── README.md<br>

## Data Source
MNIST dataset provided through `torchvision.datasets`.  
Downloaded automatically when running the notebook.
