# HackerRank "Cracking The Coding Interview" - Data Structures (Arrays) - Left Rotation

defmodule Solution do
  defp read_array() do
    IO.gets("")
    |> String.strip
    |> String.split(" ")
    |> Enum.map(fn(x) -> String.to_integer(x) end)
  end

  defp left_shift(input, times) when times == 0, do: input

  defp left_shift(input, times) do
    {left, right} = Enum.split(input, times)
    right ++ left
  end

  def main() do
  [_, iterations] = read_array
  items = read_array
  real_iterations = rem(iterations, length(items))

  items
  |> left_shift(real_iterations)
  |> Enum.join(" ")
  |> IO.puts
  end
end

Solution.main()
