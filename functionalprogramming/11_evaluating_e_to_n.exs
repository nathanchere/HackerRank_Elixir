# HackerRank "Functional Programming" - Evaluating e^n

defmodule Solution do

  defp read_integer(), do: IO.gets("") |> String.strip |> String.to_integer

  defp factorial(input) when input <= 1 do
    input
  end

  defp factorial(input) do
    input * factorial(input - 1)
  end

  defp calculate(value, iteration, result) when iteration > 10, do: result

  defp calculate(value, iteration, result) do
    dividend = :math.pow(value, iteration)
    divisor = factorial(iteration)
    IO.inspect("#{value} #{iteration} #{result} -  #{dividend}/#{divisor}")
    total = result + (dividend / divisor)
    calculate(value, iteration+1, total)
  end

  defp magic() do
    read_integer
    |> calculate(1, 1)
  end

  def main() do
    for _ <- 1 .. read_integer do magic end
  end
end

Solution.main()
