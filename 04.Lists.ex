# List, Linked List
[1, 2, 3]

# Pattern Match Index 0,2
[head | tail] = [1, 2, 3]

# Concatenate List
[1, 2, 3] ++ [4, 5]

# `_` Used To Bind An Unused Value
[head | _] = [1, 2, 3] == 1

# Better Readability
[head | _tail] = [:a, :b, :c] == :a
