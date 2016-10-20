# HackerRank "Cracking The Coding Interview" - Data Structures (Queues) - A Tale of Two Stacks

defmodule Solution do
  def process_commands(counter, queue) when counter == 0, do: nil

  def process_commands(counter, queue) do
    command = IO.gets("")
    |> String.strip
    |> process_command(counter - 1, queue)
  end

  def process_command("1 " <> arg, counter, queue),  do: process_commands(counter, queue ++ [arg])
  def process_command("2", counter, [head | queue]),  do: process_commands(counter, queue)

  def process_command("3", counter, queue) do
    IO.puts(Enum.at(queue, 0))
    process_commands(counter, queue)
  end

  def main() do
    IO.gets("") |> String.strip |> String.to_integer
    |> process_commands([])
  end
end

Solution.main()
