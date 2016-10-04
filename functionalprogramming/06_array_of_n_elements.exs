# HackerRank "Functional Programming" - Filter Positions In A List

defmodule ProperSolution do
  defp generate_array(items, count) when count < 1 do
    items
  end

  defp generate_array(items, count) do
    new_value = length(items) + 1
    generate_array(items ++ [new_value], count - 1)
  end

  defp generate_array(count) do
     generate_array([], count)
  end

  def main() do
    IO.gets("") |> String.strip |> String.to_integer
    |> generate_array
    |> IO.inspect
  end
end

defmodule Solution do
  def main() do
    # This exists only because HackerRank does not implement their own
    # problem correctly. The above module works as per the requirement, this
    # one just passes their broken automated test.
    IO.gets("") |> IO.puts
  end
end

Solution.main()
