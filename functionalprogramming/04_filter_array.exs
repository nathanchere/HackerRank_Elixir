# HackerRank "Functional Programming" - Filter Array

defmodule Solution do
  defp read_integer, do: IO.gets("") |> String.strip |> String.to_integer

  defp do_filter(value, threshold) when value >= threshold, do: nil

  defp do_filter(value, threshold) do
    IO.puts value
  end

  def main() do
    filter = read_integer

    IO.read(:stdio, :all)
    |> String.split(["\n"])
    |> Enum.map(fn(x) -> String.to_integer(x)  end)
    |> Enum.map(fn(x) -> do_filter(x, filter)  end)
  end
end

Solution.main()
