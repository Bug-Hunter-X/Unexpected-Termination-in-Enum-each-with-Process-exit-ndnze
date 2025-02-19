# Elixir Enum.each and Process.exit Bug

This repository demonstrates a subtle bug that can occur when using `Enum.each` in Elixir and terminating the process within the anonymous function. The code appears to iterate through a list, but it stops prematurely due to the use of `Process.exit`.

The solution demonstrates a safer way to handle such cases by using a different approach to control the flow of execution.