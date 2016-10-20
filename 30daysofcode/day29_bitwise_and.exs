# HackerRank "30 Days of Code" - Day 29 - Bitwise AND

use Bitwise, only_operators: true

defmodule Solution do

  defp calculate(input) do
    [n,k] = String.split(input, " ")
    |> Enum.map(fn(x)-> String.to_integer(x) end)
    calculate(n,k)
  end

  defp calculate(n,k) when ((k-1)|||k) <= n, do: IO.puts(k-1)
  defp calculate(_,k), do: IO.puts(k-2)

  def main() do
    IO.gets("") # ignore first one
    IO.read(:stdio,:all)
    |> String.split("\n")
    |> Enum.map(fn(x)->calculate(x)end)
  end
end

Solution.main()
