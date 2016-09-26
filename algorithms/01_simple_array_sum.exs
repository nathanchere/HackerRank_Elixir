# HackerRank "Algorithms" - Simple Array Sum

defmodule Solution do

  def main() do
    IO.gets("") # We can ignore the first value

    IO.gets("")
    |> String.split
    |> Enum.map(fn(x) -> String.to_integer(x)  end)
    |> Enum.sum
    |> IO.puts
  end
end

Solution.main()
