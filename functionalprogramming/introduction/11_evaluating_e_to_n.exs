# HackerRank "Functional Programming" - Evaluating e^n

defmodule Solution do

  defp read_integer(), do: IO.gets("") |> String.strip |> String.to_integer
  defp read_float(), do: IO.gets("") |> String.strip |> String.to_float

  defp factorial(input) when input <= 1, do: 1
  defp factorial(input), do: input * factorial(input - 1)

  defp calculate(0.0), do: 1.0
  defp calculate(value), do: calculate(value,1, 1.0)
  defp calculate(value, iteration, result) when iteration == 10, do: result

  defp calculate(value, iteration, result) do
    dividend = :math.pow(value, iteration)
    divisor = factorial(iteration)
    total = result + (dividend / divisor)
    calculate(value, iteration+1, total)
  end

  defp magic() do
    read_float
    |> calculate()
    |> Float.to_string(decimals: 4)
    |> IO.puts
  end

  def main() do
    for _ <- 1 .. read_integer do magic end
  end
end

Solution.main()
