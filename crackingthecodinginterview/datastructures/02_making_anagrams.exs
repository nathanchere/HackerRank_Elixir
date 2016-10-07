# HackerRank "Cracking The Coding Interview" - Data Structures (Strings) - Making Anagrams

defmodule Solution do
  def get_input,  do: IO.gets("") |> String.strip |> String.graphemes |> Enum.sort

  def get_difference(first, second), do: get_difference(second, first, 0)
  defp get_difference([a|tail_a], [b|tail_b], changes) when a == b, do: get_difference(tail_a, tail_b, changes)
  defp get_difference([a|tail_a], [b|tail_b], changes) when a < b, do: get_difference(tail_a, [b]++tail_b, changes+1)
  defp get_difference([a|tail_a], [b|tail_b], changes) when a > b, do: get_difference([a]++tail_a, tail_b, changes+1)
  defp get_difference(a, b, changes) when length(a) == 0, do: changes + length(b)
  defp get_difference(a, b, changes) when length(b) == 0, do: changes + length(a)

  def main() do
      first = get_input
      second = get_input

      get_difference(first, second)
      |> IO.puts
  end
end

Solution.main()
