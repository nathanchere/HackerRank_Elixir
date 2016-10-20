# HackerRank "Cracking The Coding Interview" - Data Structures (Queues) - A Tale of Two Stacks

defmodule Solution do
  def process_commands(counter, queue) when counter == 0, do: nil

  def process_commands(counter, queue) do
    command = IO.gets("")
    |> String.strip
    |> process_command(counter - 1, queue)
  end

  def process_command("1 " <> arg, counter, queue),  do: process_commands(counter, [queue|[arg]])
  def process_command("2", counter, [head | queue]),  do: process_commands(counter, queue)
  def process_command("3", counter, [head | queue]) do
    IO.puts(head)
    process_commands(counter, [head | queue])
  end

  def main() do
    IO.gets("") |> String.strip |> String.to_integer
    |> process_commands([])
  end
end

Solution.main()




# HackerRank "Cracking The Coding Interview" - Data Structures (Queues) - A Tale of Two Stacks

defmodule Solution do

  def process_commands(commands), do: process_commands(commands, [])
  def process_commands(commands, _) when commands == [], do: nil

  def process_commands(["3"|commands], queue)  do
    IO.puts("cmd3 #{inspect(commands)} #{inspect(queue)}")
    process_commands(commands, queue ++ ["x"])
  end

  def process_commands(["2"|commands], [head|queue])  do
    IO.puts("cmd2 #{inspect(commands)} #{inspect(queue)}")
    process_commands(commands, queue)
  end

  def process_commands([head|commands], queue)  do
    IO.puts("#{inspect(head)} #{inspect(commands)} #{inspect(queue)}")
    process_commands(commands, queue)
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
