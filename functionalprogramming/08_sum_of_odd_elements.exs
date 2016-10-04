# HackerRank "Functional Programming" - Sum Of Odd Elements

defmodule Solution do
  def main() do
    IO.read(:stdio, :all) |> String.strip |> String.split("\n")
    |> Enum.map(fn(x)->String.to_integer(x)end)
    |> Enum.filter(fn(x)->rem(x,2)!=0 end)
    |> Enum.sum
    |> IO.puts
  end
end

Solution.main()
