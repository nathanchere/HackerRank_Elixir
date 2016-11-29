# HackerRank "Week of Code 26" - Best Divisor

defmodule Solution do

  def find_best_divisor(n) when n < 0, do: 0
  def find_best_divisor(n) when n < 10, do: n

  def find_best_divisor(number), do: find_best_divisor(number, Kernel.trunc(number/2), number, 0, rem(number, 2))

  defp find_best_divisor(_, divisor, best_number, _, _) when divisor < 5, do: best_number

  defp find_best_divisor(number, divisor, best_number, best_total, 0) do
    new_value = sum_digits(divisor)
    if(new_value >= best_total) do
      find_best_divisor(number, divisor-1, divisor, new_value, rem(number, divisor - 1))
    else
      find_best_divisor(number, divisor-1, best_number, best_total, rem(number, divisor - 1))
    end
  end

  defp find_best_divisor(number, divisor, best_number, best_total, _), do: find_best_divisor(number, divisor-1, best_number, best_total, rem(number, divisor-1))

  def sum_digits(n), do: Integer.digits(n) |> Enum.sum

  defp get_input do
    IO.gets("")
    |> String.strip
    |> String.to_integer
  end

  def main() do
    get_input
    |> find_best_divisor
    |> IO.puts
  end
end

Solution.main()
