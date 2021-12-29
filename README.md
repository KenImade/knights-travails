# knights-travails

This Project was to learn about how to make use of depth first and breadth first search in trees and graphs.

The objective of the program is to find the shortest path that a knight on the chessboard will take from one node to another.

How I solved it: 
I started by creating a node class which will represent the position of the knight on the chessboard. The node stored the position of the knight, its parent node i.e the previous node used in getting to the current node if any and also the possible moves from that node as children. The knight class also validated the possible moves my making sure that the moves are moves which can be made by a knight in a game of chess and also making sure that the moves were within the limits of the board.

Next was to create a gameboard class. I created a knights movement function which would make use of helper functions such as make_tree that will help to create the possible movements from one node to another using the inputted source node. The function will then the leaf node which would be the destination node as its output. 

Then the make_visited_tree which will appent to an empty array the nodes visited from the destination to the source node.

Finally the display_knight_moves function which will calculate the size of the visited array and display message with the number and also print the nodes in the visited array starting with the source node and finally the destination node.


Concepts learned: Binary Search Trees, Graphs, Depth first search traversal, Breadth first search traversal, Recursion, Queues and Stacks and a lot of Googling and Youtube videos :).