# HackerRank "30 Days of Code" - Day 03 - Conditional Statements

defmodule Solution do

  defp is_weird(input) do
    cond do
      rem(input,2) == 1 ->
        "Weird"
      input > 20 ->
        "Not Weird"
      input > 6 ->
        "Weird"
      true ->
        "Not Weird"
    end
  end

  def main() do
    IO.gets("")
    |> String.strip
    |> String.to_integer
    |> is_weird
    |> IO.puts
  end

end

Solution.main()
