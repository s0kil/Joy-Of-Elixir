# Anonymous Functions
square = fn (x) -> x * x end
square.(5) == 25

# Anonymous Function Accept Guards And Clauses
# Guards Enable To Fine Tune Pattern Matching
f = fn
  x, y when x > 0 -> x + y
  x, y -> x * y
end

# ^ Matching First Clause
f.(1, 3) == 4
# ^ Matching Second Clause
f.(-1, 3) == -3

# Elixir Provides Many Built-In Functions
is_number(10) == true
is_list("hello") == false
elem({1, 2, 3}, 0) == 1
