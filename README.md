# ADM-HW5
This repository contains the source code, notebooks, and additional materials related to Assignment 5 of the "Algorithms for Data Mining" course (23/24) from the Data Science Master's program at Sapienza University of Rome. Below, you will find an overview of the contents of this repository.

## Introduction
This project was carried out by Group 2 from Algorithmic Methods for Data Mining (ADM) course, made of the mebers:

| NAME and SURNAME | EMAIL |
| --- | --- |
| Onur Ozan Sunger| sunger.2113119@studenti.uniroma1.it|
| Lorenzo Incoronato| incoronato.1916863@studenti.uniroma1.it|
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

### Backend Implementation

#### Functionality 1 - Graph's Features

- **Input:**
  - The graph
  - Name of the graph
- **Output:**
  - Number of nodes in the graph
  - Number of edges in the graph
  - Graph density
  - Graph degree distribution
  - Average degree of the graph
  - Graph hubs (nodes with degrees > 95th percentile)
  - Whether the graph is dense or sparse

#### Functionality 2 - Nodes' Contribution

- **Input:**
  - The graph
  - A node (paper/author)
  - Name of the graph
- **Output:**
  - Centrality measurements
    - Betweeness
    - PageRank
    - ClosenessCentrality
    - DegreeCentrality

#### Functionality 3 - Shortest Ordered Walk

- **Input:**
  - The collaboration graph
  - Sequence of authors
  - Initial and end nodes
- **Output:**
  - Shortest walk of collaborations and papers

#### Functionality 4 - Disconnecting Graphs

- **Input:**
  - The graph
  - Two papers
  - Top authors
- **Output:**
  - Minimum number of edges to disconnect the graph into two subgraphs

#### Functionality 5 - Extracting Communities

- **Input:**
  - The graph
  - Two papers
  - Top papers
- **Output:**
  - Minimum number of edges to form communities
  - List of communities
  - Whether Paper_1 and Paper_2 belong to the same community

### Frontend Implementation

#### Visualization 1 - Visualize Graph Features

- **Tables:**
  - General graph information
  - Graph hubs
- **Plots:**
  - Citation distribution (Citation graph)
  - Collaboration count (Collaboration graph)

#### Visualization 2 - Visualize Node's Contribution

- **Table:**
  - Centrality values based on different measurements

#### Visualization 3 - Visualize Shortest Ordered Route

- **Output:**
  - Papers needed for the shortest walk
  - Plot with identified nodes and edges in the shortest walk

#### Visualization 4 - Visualize Disconnected Graph

- **Output:**
  - Number of links to disconnect
  - Plot of the original graph and after removing links with identified nodes

#### Visualization 5 - Visualize Communities

- **Output:**
  - Number of links to remove
  - Table depicting communities and papers
  - Plots of the original graph, community structure, and final graph

## Command Line Question (CLQ)
### IMPORTANT NOTE: We are using the txt and graph files we obtained from Q1 for this CLQ.

### Task Summary

In this question, you need to use command line tools to answer specific questions related to the previously created directed and unweighted graph, which is the Citation graph:

1. Identify if there's any node that acts as an important "connector" between different parts of the graph.
2. Examine how the degree of citation varies among the graph nodes.
3. Calculate the average length of the shortest path among nodes.

### Implementation Steps

1. Utilize command line tools in an appropriate environment (e.g., AWS, local PC command line, Jupyter notebook).
2. Create a script named `CommandLine.sh` with the necessary commands to perform the following tasks:
   - Analyze the graph to find nodes that act as connectors between different parts.
   - Analyze the degree of citation for each node.
   - Calculate the average length of the shortest path among nodes.
3. Execute the `CommandLine.sh` script.
4. Include a screenshot of the script's output in the notebook for evaluation.

## Algorithmic Question
 ### Part A: Team Selection for Sports Championship

- Goal: Select the best athletes for a sports team from a pool of candidates.
- Athletes: Each athlete has a unique identifier and various sports skills.
- Team's Objective: Maximize the team's overall score by assigning athletes to roles based on their skills.
- Team's Score: The sum of the skill scores of its members in their assigned roles.
- Note: Assigning athletes to roles not listed in their skills results in a contribution of 0 to the global score.

**Tasks:**

1. Determine the maximum possible global score for Team Rome given the list of candidates.
2. Provide a solution that maximizes the team's score.

### Part B: Effective Team Formation

- Objective: Form a team of individuals who can work effectively together to accomplish a specific task.
- Skills: Each individual has a set of skills.
- Goal: Find a subset of individuals such that every required skill is exhibited by at least one team member.
- Cooperation: Effort is represented as edge weights in an undirected weighted graph, where lower weights indicate better cooperation.

**Tasks:**

1. Prove or disprove that the problem is NP-complete.
2. Develop a heuristic to approximate the best solution.
3. Determine the time complexity of the proposed heuristic.
