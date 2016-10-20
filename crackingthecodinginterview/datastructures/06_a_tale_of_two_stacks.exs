# HackerRank "Cracking The Coding Interview" - Data Structures (Queues) - A Tale of Two Stacks

defmodule Solution do
  def to_ints(input) do
    String.strip(input)
    |> String.split(" ")
    |> Enum.map(fn(x) -> String.to_integer(x) end)
  end

  def process_commands(commands), do: process_commands(commands, [])
  def process_commands(commands, _) when length(commands) == 0, do: nil

  def process_commands([[cmd|[args]]|tail], queue) when cmd == 1 do
    new = queue ++ [Integer.to_string(args)]
    process_commands(tail, new)
  end

  def process_commands([[cmd|args]|tail], [head|queue]) when cmd == 2,  do: process_commands(tail, queue)

  def process_commands([[cmd|args]|tail], queue) when cmd == 3 do
    [head|_] = queue
    IO.puts(head)
    process_commands(tail, queue)
  end

  def get_input do
    IO.gets ""
    IO.read(:stdio, :all)
    |> String.strip
    |> String.split("\n")
    |> Enum.map(fn(x) -> to_ints(x) end)
  end

  def main() do
    get_input
    |> process_commands
  end
end

Solution.main()
