# Structs Extend Maps With, Default Values, Compile-Time Guarantees, And Polymorphism
defmodule Person do
  defstruct name: nil, age: 0, height: 0
end

joe_info = %Person{name: "Joe", age: 30, height: 180}
joe_info.name == "Joe"
# Update Values
new_joe_info = %{joe_info | age: 31}
