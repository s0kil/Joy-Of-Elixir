# `if` Expression
if false do
  # false
else
  # true
end

# `unless` Expression
unless true do
  # false
else
  # true
end

# Compare A Value Against Multiple Patterns
case {:one, :two} do
  {:four, :five} -> "Won't Match"
  {:one, x} -> "Will Match And Bind `:two` To `x` In This Clause"
  _ -> "Match Any Value"
end

# `cond` Enables To Check For Multiple Conditions
cond do
  1 + 1 == 3 ->
    "Never Will Match"
  3 * 5 == 12 ->
    "Never Will Match"
  1 + 2 == 3 ->
    "Will Match"
  true ->
    "Will Match If Above Does Not, Essentially An `else`"
end

# `try/catch` Used To Handle Values That Are Thrown.
try do
  throw(:hello)
catch
  message -> "Got #{message}."
after
  IO.puts("`after` Is Invoked Regardless If The Thrown Value Is Caught")
end
