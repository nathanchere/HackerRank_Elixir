# HackerRank "Cracking The Coding Interview" - Data Structures (Queues) - A Tale of Two Stacks

defmodule Solution do

  def process_commands(commands), do: process_commands(commands, [], [])
  def process_commands(commands, _, _) when commands == [], do: nil

  def process_commands(["1 " <> arg|commands], queue_in, queue_out)  do
    process_commands(commands, [arg] ++ queue_in, queue_out)
  end

  def process_commands(commands, queue_in, [])  do
    process_commands(commands, [], Enum.reverse(queue_in))
  end

  def process_commands(["2"|commands], queue_in, [head|queue_out])  do
    process_commands(commands, queue_in, queue_out)
  end

  def process_commands(["3"|commands], queue_in, queue_out)  do
    IO.puts(Enum.at(queue_out, 0))
    process_commands(commands, queue_in, queue_out)
  end

  def get_input do
    IO.gets ""
    IO.read(:stdio, :all)
    |> String.strip
    |> String.split("\n")
  end

  def main() do
    get_input
    |> process_commands
  end
end

Solution.main()
