# HackerRank "Algorithms" - Simple Array Sum

defmodule Solution do

  def sum_list([head | tail], acc) do
    sum_list(tail, acc + head)
  end

  def sum_list([], acc) do
    acc
  end

  def main() do
    #IO.gets("") # We can ignore the first value
    input = "1 3 6 8 9"#IO.gets("")

    items = String.split(input)
    |> Enum.map(fn i -> Integer.parse(i); i end)

    #out = sum_list(items, 0)

    IO.puts items
  end
end

Solution.main()
