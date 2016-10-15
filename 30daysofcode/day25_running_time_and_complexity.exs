# HackerRank "30 Days of Code" - Day 25 - Running Time and Complexity

defmodule Solution do
  defp get_input(), do: IO.gets("") |> String.strip |> String.to_integer

  def check_prime(input), do: check_prime(input, 2)
  defp check_prime(2, _), do: "Prime"
  defp check_prime(input, _) when input <= 1, do: "Not Prime"
  defp check_prime(input, counter) when counter >= input/2, do: "Prime"
  defp check_prime(input, counter) when rem(input, counter)==0, do: "Not prime"
  defp check_prime(input, counter) do
    IO.puts("#{input}/#{counter} = #{input / counter}")
     check_prime(input,counter+1)
   end

  def check_prime() do
    get_input
    |> check_prime
    |> IO.puts
  end

  def main() do
    for i <- 1 .. get_input(), do: check_prime()
  end
end

Solution.main()
