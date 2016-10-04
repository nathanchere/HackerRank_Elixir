# HackerRank "Functional Programming" - Update List

defmodule Solution do

  defp print_absolute(input) do
    String.to_integer(input)
    |> abs
    |> IO.puts
  end

  def main() do
    IO.read(:stdio, :all) |> String.strip |> String.split("\n")
    |> Enum.map(fn(x)->print_absolute(x)end)
  end
end

Solution.main()
