# HackerRank "10 Days of Statistics" - Day 00 - Basic Statistics

defmodule Solution do

  defp get_mean(count, values) do
    Float.round(values / count, 1)
  end

  defp get_median(count, values) do
    cond do
      rem(count,2) == 1 ->
        Enum.at(values, round(count * 0.5))

      true ->
        44
    end
  end

  defp get_mode(count, values) do: 5 end

  def main() do

    #count = IO.gets("")
    count = "10"
    |> String.strip
    |> String.to_integer

    #values = IO.gets("")
    values = "64630 11735 14216 99233 14470 4978 73429 38120 51135 67060"
    |> String.strip
    |> String.split
    |> Enum.map(fn(x) -> String.to_integer(x)  end)
    |> Enum.sort

    IO.puts get_mean(count, values)
    IO.puts get_median(count, values)
    IO.puts get_mode(count, values)

  end
end

Solution.main()
