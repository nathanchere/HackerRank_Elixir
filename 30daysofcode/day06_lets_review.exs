# HackerRank "30 Days of Code" - Day 06 - Let's Review

defmodule Solution do

  defp deinterlace_string(empty, evens, odds, n) when length(empty) < 1 do
    {evens,odds}
  end

  defp deinterlace_string([head | tail], evens, odds, n) do
    cond do
      rem(n,2) == 0 ->
        deinterlace_string(tail, '#{evens}#{[head]}',odds, n+1)
      true ->
        deinterlace_string(tail, evens, '#{odds}#{[head]}', n+1)
    end
  end

  defp deinterlace_string(input) do
    {odds, evens} = deinterlace_string('#{input}', '', '', 0)
    {odds, evens}
  end

  defp get_input(n) when n <= 0 do
  end

  defp get_input(n) do
    {evens, odds} = IO.gets("")
        |> String.strip
        |> deinterlace_string

    IO.puts "#{evens} #{odds}"

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
