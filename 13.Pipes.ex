# Pipes Pass Output Of An Expression As First Parameter Into A Function
Range.new(1, 10)
|> Enum.map(fn x -> x * x end)
|> Enum.filter(fn x -> rem(x, 2) == 0 end)
# [4, 16, 36, 64, 100]
