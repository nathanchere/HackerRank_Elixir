# HackerRank "Functional Programming" - Recusion - Pascal's Triangle

defmodule Solution do

  def generate_triangle(total_rows), do: generate_triangle(total_rows-1,[1], [[1]])
  def generate_triangle(0, _, results), do: results
  def generate_triangle(n, last_row, results) do
    next_row = Enum.zip([0]++last_row, last_row++[0])
      |> Enum.map(fn {a,b} -> a+b end)
    generate_triangle(n-1, next_row, results ++ [next_row])
  end

  def print_triangle(results) do
    Enum.map(results, fn(x)->Enum.join(x, " ") end)
    |> Enum.join("\n")
    |> IO.puts
  end

  def main() do
      IO.gets("") |> String.strip |> String.to_integer
      |> generate_triangle
      |> print_triangle
  end
end

Solution.main()
