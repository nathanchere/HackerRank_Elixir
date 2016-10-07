# HackerRank "Cracking The Coding Interview" - Data Structures (Arrays) - Left Rotation

defmodule Solution do
  defp read_array() do
    IO.gets("")
    |> String.strip
    |> String.split(" ")
    |> Enum.map(fn(x) -> String.to_integer(x) end)
  end

  defp left_shift(input, times) when times == 0, do: input

  defp left_shift([head|tail], times) do
    left_shift(tail ++ [head], times - 1)
  end

  def main() do
  [_, iterations] = read_array

  read_array
  |> left_shift(iterations)
  |> Enum.join(" ")
  |> IO.puts

  end
end

Solution.main()
