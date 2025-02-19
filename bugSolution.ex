```elixir
list = [1, 2, 3, 4, 5]

Enum.each(list, fn x ->
  if x == 3 do
    # Instead of exiting the process, we can use a flag
    :ok = 1  #This is a placeholder to avoid warnings about x not being used.
  else
    IO.puts(x)
  end
end)

#Alternatively, if you need to stop processing under certain conditions, consider using Enum.reduce
list = [1, 2, 3, 4, 5]
result = Enum.reduce(list, [], fn x, acc ->
  if x == 3 do
    acc # Stop accumulating elements at 3
  else
    [x | acc]
  end
end)
IO.inspect Enum.reverse(result) #output: [1, 2]
```