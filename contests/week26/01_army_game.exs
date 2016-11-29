# HackerRank "Week of Code 26" - Army Game

defmodule Solution do

  defp calculate_supply_drops(0,_), do: 0
  defp calculate_supply_drops(_,0), do: 0
  defp calculate_supply_drops(n,m), do: Kernel.trunc(Float.ceil(n/2)*Float.ceil(m/2))

  defp get_input do
    IO.gets("")
    |> String.strip
    |> String.split
    |> Enum.map(fn x -> String.to_integer(x) end)
  end

  def main() do
    [n,m] = get_input

    calculate_supply_drops(n,m)
    |> IO.puts
  end
end

Solution.main()
