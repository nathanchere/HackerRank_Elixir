# HackerRank "30 Days of Code" - Day 05 - Loops

defmodule Solution do
  defp print_result(value, n) do
    IO.puts "#{value} x #{n} = #{value * n}"
  end

  defp print_multiples(value, n) when n >= 10 do
    print_result value, n
  end

  defp print_multiples(value, n) do
    print_result value, n
    print_multiples(value, n + 1)
  end

  defp print_multiples(value) do
    print_multiples(value, 1)
  end

  def main() do
    IO.gets("")
    |> String.strip
    |> String.to_integer
    |> print_multiples
  end

end

Solution.main()
