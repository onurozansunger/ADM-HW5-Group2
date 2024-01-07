# ADM-HW4
This repository contains the source code, notebooks, and additional materials related to Assignment 4 of the "Algorithms for Data Mining" course (23/24) from the Data Science Master's program at Sapienza University of Rome. Below, you will find an overview of the contents of this repository.

## Introduction
This project was carried out by Group 1 from Algorithmic Methods for Data Mining (ADM) course, made of the mebers:

| NAME and SURNAME | EMAIL |
| --- | --- |
| Onur Ozan Sunger| sunger.2113119@studenti.uniroma1.it|
| Lorenzo Incoronato| And incoronato.1916863@studenti.uniroma1.it|
| Umut Altun | altunumut13@gmail.com |
| Ragno Tim| ragno.tim2@gmail.com|
| | |
## Question 1
In this assignment, we will be working with a dataset containing information about a group of papers and their citation relationships. The primary objectives are to create two graphs:

Citation Graph: This graph will represent the citation relationships between papers. It should be unweighted and directed, with edges indicating citations from one paper to another.
Collaboration Graph: This graph will represent collaborations among paper authors. It should be weighted and undirected, with an appropriate weighting scheme for the edges.

### Data Pre-processing
The dataset is large and may not fit in memory, so we'll focus on a subgraph. To do this, we will:

1. Identify the top 10,000 papers with the highest number of citations.
2. Create nodes for these papers in both the Citation and Collaboration graphs.
3. For the Citation graph, consider only the citation relationships between these 10,000 papers, ignoring the rest.
4. For the Collaboration graph, consider collaborations between the authors of these 10,000 papers, ignoring the rest.
### Implementation Details
To implement this, follow these steps:

1. Download the dataset from the provided link.
2. Identify the top 10,000 papers based on citation count.
3. Create nodes for these papers in the Citation Graph.
4. Create nodes for the authors of these papers in the Collaboration Graph.
5. Populate the Citation Graph with directed edges representing citations among the selected papers.
6. Populate the Collaboration Graph with weighted, undirected edges representing collaborations among authors of the selected papers.
7. Analyze and visualize the resulting graphs as needed.
## Question 2
The second question of the Homework 4 concerns topics such as feature engeneering, dimensionality reduction and clsutering. In details, starting from a dataset about the Netflix's accesses by users from Kaggle, the following functions has been implemented:
1. Feature engeneering: the users has been "grouped by" in oreder to have for each row a unique user and then 15 new features has been created starting from the original features. 
2. Dimensinality reduction: after ggettib the new dataset, 2 dimensionality reduction techniques has been imlemented: Principal Component Analysis (PCA) and Factor Analysis for Mixed Data (FAMD); just this second technique has been used to perform the kmeans algorithm and this choice is justified by its characteristic of dealing with datasets that cointain both numberical and categorical features. 
3. Clsutering: a kmeans algorithm has been implemented from scratch, firstly without the random inizialization and then with it, together with 2 methods to find the optimal number of clsuters. In the last point of this third part, is also present another clustering alorithm suggested by ChatGPT with some considerations about. 
4. Analysis of the results: ehe last part of the code is dedicated to the analysis of the results through the pivot tables
## Command Line Question (CLQ)
For this Command Line Question (CLQ), we'll need to use command line tools to analyze a dataset and answer specific questions about Netflix usage.
1. Find the Most-Watched Netflix Title: Using command line tools, we will need to process the dataset to determine which Netflix title has been watched the most. This might involve sorting, counting, and filtering operations.
2. Calculate Average Time Between Clicks: We will calculate the average time interval between subsequent clicks on Netflix.com. This will likely require us to manipulate timestamp data and calculate averages.
3. Identify the User with the Most Time Spent on Netflix: We'll need to aggregate data to find out which user has spent the most time watching Netflix. This involves summing up watch times per user and identifying the user with the maximum total.
## Algorithmic Question
 In this problem, we need to help Federico maximize his final score at a university with a unique grading system. We will:
1. Write a recursive algorithm to calculate the highest possible final score Federico can achieve. The code should take his initial score and a list of exam scores as input.
2. Analyze the time complexity of our recursive solution using big-O notation, demonstrating whether or not it is efficient.
3. If the recursive solution is found to be inefficient, optimize the code using a different approach, and again analyze its time complexity to prove the improvement.
4. Challenge me to provide a third, potentially more optimized implementation, and analyze its time complexity.
We will use example inputs and outputs to test and demonstrate the functionality of the code. The challenge includes not only implementing the algorithms but also analyzing and optimizing their efficiency.

