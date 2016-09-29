# HackerRank "30 Days of Code" - Day 07 - Arrays

defmodule Solution do

  def main() do
    IO.gets("") # we can ignore the first one again
    input = IO.gets("")
    |> String.split
    |> Enum.map(fn(x) -> String.strip(x) |> String.to_integer end)
    |> Enum.reverse

    Enum.join(input, " ")
    |> IO.puts
  end

end

Solution.main()
