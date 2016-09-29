# HackerRank "30 Days of Code" - Day 08 - Dictionaries and Maps

defmodule Solution do

  defp read_entries(results, n) when n > 0 do
    [name, number] = IO.gets("")
    |> String.trim
    |> String.split

    read_entries(results ++ [{name,number}], n-1)
  end

  defp read_entries(results, n) do
    results
  end

  defp read_entries(n) do
    read_entries [], n
  end

  defp get_number(address_book, key) do

  end

  defp get_names(address_book) do
    search_name = IO.gets("") |> String.trim
    cond do
      String.length(search_name) < 1 ->
        nil
      true ->
        get_number(address_book, search_name)
        |> IO.puts

        get_names(address_book)
    end
  end

  def main() do
    address_book = IO.gets("")
    |> String.strip
    |> String.to_integer
    |> read_entries

    get_names address_book

  end
end

Solution.main()
