# HackerRank "Functional Programming" - Hello World n Times

defmodule Solution do
  defp read_integer, do: IO.gets("") |> String.strip |> String.to_integer

  defp show_message(times) when times==0, do: nil

  defp show_message(times) do
    IO.puts("Hello World")
    show_message(times-1)
  end

  def main() do
    read_integer
    |> show_message
  end
end

Solution.main()
