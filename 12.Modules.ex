# A Module Is A Group Of Functions Under a Namespace
defmodule Math do
  def sum(a, b) do
    add(a + b)
  end

  def square(1, 2) do
    x * x
  end

  # Private Functions Can Only Be Invoked Locally
  defp add(a, b), do: a + b
end

Math.sum(1, 2) == 3
Math.square(3) == 9

# Functions That Have Multiple Clauses,
# The First Function That Satisfies Is Invoked.
defmodule Geometry do
  def area({:rectangle, w, h}) do
    w * h
  end

  def area({:circle, r}) when is_number(r) do
    3.14 * r * r
  end
end

Geometry.area({:rectangle, 2, 3}) == 6
Geometry.area({:circle, 3}) == 28.25999999999999801048


defmodule Recursion do
  def sum_list([head, tail], accumulator) do
    sum_list(tail, accumulator + head)
  end

  def sum_list([], accumulator) do
    accumulator
  end
end

Recursion.sum_list([1, 2, 3], 0) == 6


# Modules Support Attributes
defmodule MyModule do
  @module_doc """
  Built-In Attribute For Documentation
  """

  # Custom Attribute
  @my_attribute 100
  IO.inspect(@my_attribute)
end
