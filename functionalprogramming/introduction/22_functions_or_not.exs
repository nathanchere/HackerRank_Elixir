# HackerRank "Functional Programming" - Functions Or Not?


defmodule Solution do

  defp get_number do
    IO.gets("") |> String.strip |> String.to_integer
  end

  def get_function() do
      check_is_function(get_number, %{})
      |> show_result
  end

  defp show_result(:true), do: IO.puts("YES")
  defp show_result(:false), do: IO.puts("NO")

  def swallow_input(0), do: :false

  def swallow_input(counter) do
    IO.gets("")
    swallow_input(counter-1)
  end

  def check_is_function(0, _), do: :true

  def check_is_function(counter, results) do
    [key, _] = IO.gets("")
    |> String.strip
    |> String.split(" ")

    if Map.has_key?(results, key)  do
       swallow_input(counter-1)
    else
      check_is_function(counter-1, Map.put(results, key, 0))
    end
  end

  def main() do
      for i <- 1..get_number do
        get_function
      end
  end
end

Solution.main()
