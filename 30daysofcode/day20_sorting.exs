# HackerRank "30 Days of Code" - Day 20 - Sorting

defmodule Solution do
  defp bubble_sort(items) when length(items)<=1, do: {items, 0}

  defp bubble_sort(items) do
    sort_step(items, [], 0, :false)
  end

  defp sort_step([first|[second|tail]], sorted, swaps, isDirty) when length(tail) == 0 and isDirty == :false do
    if first <= second do
      {sorted++[first,second], swaps}
    else
      sort_step(sorted++[second,first], [], swaps+1, :false)
    end
  end

  defp sort_step([first|[second|tail]], sorted, swaps, isDirty) when length(tail) == 0 and isDirty == :true do
    if first <= second do
      sort_step(sorted++[first,second], [], swaps, :false)
    else
      sort_step(sorted++[second,first], [], swaps+1, :false)
    end
  end

  defp sort_step([first|[second|tail]], sorted, swaps, isDirty) do
    if first <= second do
      sort_step([second] ++ tail, sorted++[first], swaps, isDirty)
    else
      sort_step([first] ++ tail, sorted++[second], swaps + 1, :true)
    end
  end

  def main() do
    IO.gets("") # we can ignore the first one again
    input = IO.gets("") |> String.strip |> String.split
    |> Enum.map(fn(x) -> String.to_integer(x) end)

    {sorted, swaps} = bubble_sort(input)
    [first|_] = sorted
    [last|_] = Enum.reverse(sorted)

    IO.puts("Array is sorted in #{swaps} swaps.")
    IO.puts("First Element: #{first}")
    IO.puts("Last Element: #{last}")
  end
end

Solution.main()
