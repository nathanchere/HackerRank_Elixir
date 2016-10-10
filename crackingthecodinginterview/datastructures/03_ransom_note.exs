# HackerRank "Cracking The Coding Interview" - Data Structures (Hash Tables) - Ransom Note

defmodule Solution do

  def get_input(value) do
    value
    |> String.strip
    |> String.split(" ")
    |> Enum.reduce(Map.new, fn (word,dictionary) -> Map.update(dictionary, word, 1, &(&1+1)) end)
  end

  def get_input do
     IO.gets("")
     |> String.strip
     |> String.split(" ")
     |> Enum.reduce(Map.new, fn (word,dictionary) -> Map.update(dictionary, word, 1, &(&1+1)) end)
  end

  defp print_result(keys, _, _) when length(keys) == 0, do: "Yes"

  defp print_result(keys, ransom_note, magazine) do
    [head|tail] = keys
    if Map.get(ransom_note, head) > Map.get(magazine, head) do
      "No"
    else
      print_result(tail, ransom_note, magazine)
    end
  end

  def print_result(ransom_note, magazine), do: print_result(Map.keys(ransom_note), ransom_note, magazine)

  def main() do
      #IO.gets ""
      magazine = get_input("o l x imjaw bee khmla v o v o imjaw l khmla imjaw x")
      ransom_note = get_input("imjaw l khmla x imjaw o l l o khmla v bee o o imjaw imjaw o")

      print_result(ransom_note, magazine)
      |> IO.puts
  end
end

Solution.main()
