# HackerRank "Functional Programming" - Reverse A List

defmodule Solution do
  defp reverse_items([head|tail], result) when length(tail) <= 0 do
    [head] ++ result
  end

  defp reverse_items([head|tail], result) do
    reverse_items(tail, [head] ++ result)
  end

  defp reverse_items(input) do
    reverse_items(input, [])
  end

  def main() do
    IO.read(:stdio, :all)
    |> String.strip
    |> String.split("\n")
    |> reverse_items
    |> Enum.map(fn(x)->IO.puts(x) end)
  end
end

Solution.main()
