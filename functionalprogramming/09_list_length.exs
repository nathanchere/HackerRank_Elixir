# HackerRank "Functional Programming" - List Length

defmodule Solution do

  defp calculate_length([head|tail], total) when length(tail) <= 0 do
    total + 1
  end

  defp calculate_length([head|tail], total) do
    calculate_length(tail, total+1)
  end

  defp calculate_length(input) do
    calculate_length(input, 0)
  end

  def main() do
    IO.read(:stdio, :all) |> String.strip |> String.split("\n")
    |> calculate_length
    |> IO.puts
  end
end

Solution.main()
