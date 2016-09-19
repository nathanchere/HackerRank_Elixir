# HackerRank "30 Days of Code" - Day 02 - Operators

defmodule Solution do

  def main() do

    {meal_cost,_} = IO.gets("")
    |> String.strip
    |> Float.parse

    {tip_percent,_} = IO.gets("")
    |> String.strip
    |> Integer.parse

    {tax_percent,_} = IO.gets("")
    |> String.strip
    |> Integer.parse

    tip = meal_cost * (tip_percent * 0.01)
    tax = meal_cost * (tax_percent * 0.01)

    total = meal_cost + tip + tax
    |> round

    IO.puts("The total meal cost is #{total} dollars.")
  end

end

Solution.main()
