# HackerRank "Functional Programming" - Solve Me First

defmodule Solution do
  defp read_integer, do: IO.gets("") |> String.strip |> String.to_integer

  def main() do
    read_integer + read_integer
    |> IO.puts
  end
end

Solution.main()
