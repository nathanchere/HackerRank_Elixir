# HackerRank "30 Days of Code" - Day 06 - Let's Review

defmodule Solution do

  defp deinterlace_string(input) do
    odds = "Hck"
    events = "aer"
    {odds,evens}
  end

  defp get_input(n) when n <= 0 do
  end

  defp get_input(n) do
    input = IO.gets("")

    result = deinterlace_string(input)
    {evens,_} = result
    {_,odds} = result
    IO.puts evens
    IO.puts odds

    get_input(n-1)
  end

  def main() do
    IO.gets("")
    |> String.strip
    |> String.to_integer
    |> get_input
  end

end

Solution.main()
