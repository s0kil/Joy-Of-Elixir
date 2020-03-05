# `try/rescue` Is Used To Handle Exceptions
try do
  raise "Some Error"
rescue
  RuntimeError -> "Rescued A Runtime Error"
  _error -> "Recuse Any Error"
end


# All Exceptions Contain A Message
try do
  raise "Some Error"
rescue
  error in [RuntimeError] ->
    error.message # Some Error
end
