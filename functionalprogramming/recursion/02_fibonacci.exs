# HackerRank "Functional Programming" - Recusion - Fibonacci Numbers

defmodule Solution do

  defp fibonacci(0), do: 0
  defp fibonacci(1), do: 0
  defp fibonacci(2), do: 1
  defp fibonacci(value) do
      fibonacci(value - 1) + fibonacci(value - 2)
  end

  def main() do
      IO.gets("") |> String.strip |> String.to_integer
      |> fibonacci
      |> IO.puts
  end
end

Solution.main()
