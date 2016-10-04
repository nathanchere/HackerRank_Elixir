# HackerRank "Functional Programming" - List Replication

defmodule Solution do
  defp read_integer, do: IO.gets("") |> String.strip |> String.to_integer

  defp show_message(_, times) when times==0, do: nil

  defp show_message(message, times) do
    IO.puts(message)
    show_message(message, times-1)
  end

  def main() do
    repetitions = read_integer
    values = IO.read(:stdio, :all)
    |> String.split([" ", "\n"])

    Enum.map(values, fn(x) -> show_message(x, repetitions) end)
  end
end

Solution.main()
