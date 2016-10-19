# HackerRank "Functional Programming" - Recusion - Computing the Greatest Common Divisor

defmodule Solution do

  defp get_numbers do
    [a,b] = IO.gets("") |> String.strip |> String.split(" ")
    |> Enum.map(fn(x)->String.to_integer(x)end)

    if a > b do
      [a,b]
    else
      [b,a]
    end
  end

  def calculate_gcd([a,0]), do: a
  def calculate_gcd([a,a]), do: a

  def calculate_gcd([a,b]) do
    remainder = rem(a,b)
    calculate_gcd([b, remainder])
  end

  def main() do
      get_numbers
      |> calculate_gcd
      |> IO.puts
  end
end

Solution.main()
