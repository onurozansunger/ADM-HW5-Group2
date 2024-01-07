#!/bin/bash

# Analyze betweenness centrality and node degrees from graph_analysis.txt

echo "Analyzing betweenness centrality and node degrees from graph_analysis.txt"

# Question 1

# Display top 5 nodes by betweenness centrality
echo "Top 5 nodes by betweenness centrality:"
sort -k2 -nr graph_analysis.txt | head -5
echo "" # Add a blank line for better readability

# Question 2

# Calculate and display degree variation among nodes (Answer to Question 2)
echo "Degree variation among nodes:"
awk '{sum += $3; sqsum += $3 * $3; count++} END {print "Average Degree: " sum/count; print "Standard Deviation: " sqrt(sqsum/count - (sum/count)^2)}' graph_analysis.txt
echo "" # Add a blank line for better readability

# Question 3

# Use Python to calculate average shortest path length from the saved graph
echo "Calculating average shortest path length using Python:"
python3 - <<EOF
import pickle
import networkx as nx

# Load the graph from the pickle file
with open('citation_graph.pkl', 'rb') as file:
    citation_graph = pickle.load(file)

# Method 1: Using NetworkX's average_shortest_path_length function
try:
    avg_path_length_nx = nx.average_shortest_path_length(citation_graph)
    print(f"Average Shortest Path Length (NetworkX method): {avg_path_length_nx}")
except nx.NetworkXError:
    print("Graph is not connected, average shortest path not computable using NetworkX method.")

# Method 2: Using breadth-first search (BFS) for each node
def calculate_avg_shortest_path_bfs(graph):
    total_length, total_paths = 0, 0
    for source in graph:
        path_lengths = nx.single_source_shortest_path_length(graph, source)
        total_length += sum(path_lengths.values())
        total_paths += len(path_lengths) - 1  # Exclude the path to the source itself
    return total_length / total_paths if total_paths > 0 else 0

avg_path_length_bfs = calculate_avg_shortest_path_bfs(citation_graph)
print(f"Average Shortest Path Length (BFS method): {avg_path_length_bfs}")
EOF
