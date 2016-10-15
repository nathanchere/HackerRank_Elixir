# HackerRank "30 Days of Code" - Day 25 - Running Time and Complexity

defmodule Solution do
  defp write_prime(true), do: "Prime"
  defp write_prime(false), do: "Not prime"

  defp get_input(), do: IO.gets("") |> String.strip |> String.to_integer

  defp check_prime(input) when input <= 1, do: false
  defp check_prime(2), do: true
  defp check_prime(3), do: true
  defp check_prime(input) when rem(input, 2)==0, do: false
  defp check_prime(input) when rem(input, 3)==0, do: false

  defp check_prime(input), do: check_prime(input,5, 2)

  defp check_prime(input, i, w) when i * i > input, do: true

  defp check_prime(input, i, w) when rem(input, i) == 0, do: false
  defp check_prime(input, i, w), do: check_prime(input, i+w, 6-w)

  def check_prime() do
    get_input()
    |> check_prime
    |> write_prime
    |> IO.puts
  end

  def main() do
    for i <- 1 .. get_input(), do: check_prime()
  end
end

Solution.main()
