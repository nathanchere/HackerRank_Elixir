# HackerRank "30 Days of Code" - Day 26 - Nested Logic

defmodule Solution do

  defp get_date do
    [day,month,year] = IO.gets("")
    |> String.strip |> String.split
    |> Enum.map(fn(x)->String.to_integer(x) end)
    [year,month,day]
  end

  defp get_total_fine([y,m,d],[y,m,d]), do: 0
  defp get_total_fine([y1,_,_],[y2,_,_]) when y1 < y2, do: 0
  defp get_total_fine([y1,_,_],[y2,_,_]) when y1 > y2, do: 10000
  defp get_total_fine([_,m1,_],[_,m2,_]) when m1 < m2, do: 0
  defp get_total_fine([_,m1,_],[_,m2,_]) when m1 > m2, do: 500*(m1-m2)
  defp get_total_fine([_,_,d1],[_,_,d2]) when d1 < d2, do: 0
  defp get_total_fine([_,_,d1],[_,_,d2]) when d1 > d2, do: 15*(d1-d2)

  def main() do
    returned_date = get_date
    due_date = get_date

    get_total_fine(returned_date, due_date)
    |> IO.puts
  end
end

Solution.main()
