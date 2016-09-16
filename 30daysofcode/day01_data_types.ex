# HackerRank "30 Days of Code" - Day 01 - Data Types

defmodule Solution do

  defp add_int(a,b), do: a + b
  defp add_double(a,b), do: trunc((a + b) * 10) / 10

  def main() do

    i = 4
    d = 4.0
    s = "HackerRank "

    result_1 = IO.gets("")
    |> String.strip #Because of trailing '\n'
    |> String.to_integer
    |> add_int i

    result_2 = IO.gets("")
    |> String.strip #Because of trailing '\n'
    |> String.to_float
    |> add_double d

    result_3 = [s, IO.gets("")]

    IO.puts(result_1)
    IO.puts(result_2)
    IO.puts(result_3)
  end

end

Solution.main()
