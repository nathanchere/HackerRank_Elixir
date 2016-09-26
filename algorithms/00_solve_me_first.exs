# HackerRank "Algorithms" - Solve Me First

defmodule Solution do
  defp solveMeFirst(a, b), do: a + b

  def main() do
    a = IO.gets("")
    |> String.strip
    |> String.to_integer

    b = IO.gets("")
    |> String.strip
    |> String.to_integer


    solveMeFirst(a, b)
    |> IO.puts
  end
end

Solution.main()
