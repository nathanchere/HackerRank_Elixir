# HackerRank "Cracking The Coding Interview" - Data Structures (Strings) - Making Anagrams

defmodule Solution do

  def get_input do
    IO.gets("") |> String.strip |> String.graphemes |> Enum.sort
  end

  def get_difference(first, second) do
    if length(first) > length(second) do
      get_difference(second, first, 0, [])
    else
      get_difference(first, second, 0, [])
    end
  end

  defp get_difference([a|tail_a], [b|tail_b], changes, extra) do
    IO.puts("#{a}/#{b} X:#{changes},#{inspect(extra)}")
    if a == b do
       get_difference(tail_a, tail_b, changes, extra)
    else
      get_difference(tail_a, [b]++tail_b, changes + 1, extra ++ [a])
    end
  end

  defp get_difference(a, b, changes, extra) when length(a) == 0 do
    if length(b) > length(extra) do
      get_difference(extra, b, changes)
    else
      get_difference(b, extra, changes)
    end
   end

  defp get_difference([a|tail_a], [b|tail_b], changes) do
    IO.puts("#{a}/#{b} X:#{changes}")
    #IO.puts("#{a}/#{b} TA:#{inspect(tail_a)} TB:#{inspect(tail_b)} X:#{changes}")
    if a == b do
       get_difference(tail_a, tail_b, changes)
    else
      get_difference(tail_a, tail_b, changes + 1)
    end
  end

  defp get_difference(a, b, changes) when length(a) == 0, do: changes + length(b)

  def main() do
      #first = get_input
      #second = get_input

      first = "cdefg" |> String.graphemes |> Enum.sort
      second = "aaaac" |> String.graphemes |> Enum.sort

      get_difference(first, second)
      |> IO.puts
  end
end

Solution.main()
