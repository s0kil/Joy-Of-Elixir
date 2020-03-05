# An Agent Is A Process That Keeps Track Of Some Changing Value

# Create An Agent, Initial Value Is Whatever The Function Returns
{ok, my_agent} = Agent.start_link(fn -> ["red", "green"] end)

# Takes In The Agent Name And `fn` That Is Passed To Current State,
# Return Value Is Whatever The Function Returns
Agent.get(my_agent, fn colors -> colors end) == ["red", "green"]

# Update The Agents State
Agent.update(my_agent, fn colors -> ["blue" | colors] end)
