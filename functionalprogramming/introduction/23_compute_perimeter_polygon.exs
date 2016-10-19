# HackerRank "Functional Programming" - Compute the Perimeter of a Polygon


defmodule Solution do

  defp get_number do
    IO.gets("") |> String.strip |> String.to_integer
  end

  def get_point() do
      [x,y] = IO.gets("") |> String.strip |> String.split(" ")
      |> Enum.map(fn(x)->String.to_integer(x)end)
      {x,y}
  end

  defp distance({p0x,p0y}, {p1x,p1y}) do
    :math.sqrt( (p1x - p0x) * (p1x - p0x) + (p1y - p0y) * (p1y - p0y) )
  end

  def read_points(counter) do
    first = get_point()
    read_points(counter-1, first, first , 0)
  end

  def read_points(0, first, last, total) do
    distance(first, last) + total
  end

  def read_points(counter, first, last, total) do
    new = get_point()
    read_points(counter-1, first, new, distance(new,last) + total)
  end

  def main() do
      get_number
      |> read_points
      |> IO.puts
  end
end

Solution.main()
