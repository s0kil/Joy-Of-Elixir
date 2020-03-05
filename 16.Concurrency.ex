# Elixir Relies On Actor Model For Concurrency,
# Spawning Processes, Sending/Receiving Messages

f = fn -> 2 * 2 end
spawn(f) # Returns A Process Identifier

defmodule Geometry do
  def area_loop do
    receive do
      {:rectangle, w, h} ->
        IO.puts("Area = #{w * h}")
        # Calls Itself Recursively,
        # In Order To Process More Than One Message
        area_loop()
      {:circle, r} ->
        IO.puts("Area = #{3.14 * r * r}")
        area_loop()
    end
  end
end

pid = spawn(fn -> Geometry.area_loop() end)
# Alternative Spawn
pid = spawn(Geometry, :area_loop, [])

# Sending A Message To `pid`
send pid {:rectangle, 2, 3}
send pid {:circle, 2}

# Get Current Process ID
self()
