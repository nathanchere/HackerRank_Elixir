# HackerRank "Functional Programming" - Filter Positions In A List

defmodule Solution do
  defp add_indices([head|tail], accumulator, result) when length(tail) == 0 do
    result ++ [{accumulator, head}]
  end

  defp add_indices([head|tail], accumulator, result) do
    add_indices(tail, accumulator + 1, result ++ [{accumulator, head}])
  end

  defp add_indices(list) do
    add_indices(list, 0, [])
  end

  def main() do
    values = IO.read(:stdio, :all)
    |> String.split(["\n"])
    |> add_indices
    |> Enum.filter(fn({x,_}) -> rem(x,2)==1 end)
    |> Enum.map(fn({_,x}) -> IO.puts(x) end)
  end
end

Solution.main()
