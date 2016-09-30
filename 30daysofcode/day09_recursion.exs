# HackerRank "30 Days of Code" - Day 09 - Recursion

defmodule Solution do

  defp factorial(input) when input <= 1 do
    input
  end

  defp factorial(input) do
    input * factorial(input - 1)
  end

  def main() do
    IO.gets("") |> String.strip |> String.to_integer
    |> factorial
    |> IO.puts
  end
end

Solution.main()
