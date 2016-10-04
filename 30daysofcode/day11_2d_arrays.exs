# HackerRank "30 Days of Code" - Day 11 - 2D Arrays

defmodule Solution do

  defp find_hourglass(grid, x, y) do
    Enum.at(grid, x+ y*6) +
    Enum.at(grid, x+1+ y*6) +
    Enum.at(grid, x+2+ y*6) +
    Enum.at(grid, x+1+ (y+1)*6) +
    Enum.at(grid, x+ (y+2)*6) +
    Enum.at(grid, x+1+ (y+2)*6) +
    Enum.at(grid, x+2+ (y+2)*6)
  end

  defp find_hourglasses(grid) do
    for x <- 0..3 do
      for y <- 0..3 do
        find_hourglass(grid,x,y)
      end
    end
  end

  defp read_grid(result, count) when count == 0, do: result

  defp read_grid(result, count) do
      new_result = IO.gets("")
      |> String.strip
      |> String.split
      |> Enum.map(fn(x) -> String.to_integer(x)  end)

      read_grid(result ++ new_result, count - 1)
  end

  def main() do
    read_grid([], 6)
    |> find_hourglasses
    |> List.flatten
    |> Enum.max
    |> IO.puts
  end
end

Solution.main()
