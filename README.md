# Ruby Knight Movement Calculator

Completed as part of The Odin Project: Ruby.

## Description

A script that takes a starting coordinate and ending coordinate for a standard 8x8 chess board, and returns the shortest path a knight can take between the two points.

## Learning objectives

- Implement search algorithm in a real-world example
- Implement a directional graph
- Become more familiar with the basics of graph theory, and how breadth-first searches can be useful (i.e. to avoid infinite loops, and to find the shortest path)

## Usage

Positions on the chess board are stored as arrays representing coordinates, in the form [a, b]. a and b are both between 0 and 7 (inclusive).

Note: this impelmentation returns the first (and therefore shortest) path found. Other paths of equal length may also exist.

## Example

The shortest route between [0, 0] and [7, 7] can be found by:

```
>  pp knight_moves([0, 0], [7, 7])
=> [[0, 0], [1, 2], [2, 4], [3, 6], [4, 4], [5, 6], [7, 7]]
```