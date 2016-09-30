# HackerRank "30 Days of Code" - Day 10 - Binary Numbers

defmodule Solution do

  defp get_most_consecutive_ones([head|tail], count, highest) when length(tail) == 0 do
    cond do
      head == "1" ->
        max(highest, count+1)
      head == "0" ->
        highest
    end
  end

  defp get_most_consecutive_ones([head|tail], count, highest) do
    cond do
      head == "1" ->
        current_highest = max(highest, count+1)
        get_most_consecutive_ones(tail, count+1, current_highest)
      head == "0" ->
        get_most_consecutive_ones(tail, 0, highest)
    end
  end

  defp get_most_consecutive_ones(input) do
    get_most_consecutive_ones(input, 0, 0)
  end

  def main() do
    IO.gets("") |> String.strip |> String.to_integer
    |> Integer.to_string(2)
    |> String.graphemes
    |> get_most_consecutive_ones
    |> IO.puts
  end
end

Solution.main()
