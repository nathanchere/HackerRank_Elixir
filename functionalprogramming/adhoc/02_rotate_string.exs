# HackerRank "Functional Programming" - Ad Hoc - Rotate String

defmodule Solution do

  defp get_input() do
    IO.gets("")
    IO.read(:stdio,:all)
    |> String.split("\n")
  end

  def show_rotations([a]), do: IO.puts(a)

  def show_rotations([head|tail]) do
    IO.write("#{tail}#{head} ")
    show_rotations(tail, [head])
  end

  def show_rotations([head|tail], used) when length(tail)==0, do: IO.puts("#{used}#{head} ")

  def show_rotations([head|tail], used) do
    IO.write("#{tail}#{used}#{head} ")
    show_rotations(tail, used++[head])
  end

  def main() do
      get_input
      |> Enum.map(fn(x)->show_rotations(String.graphemes(x))end)
  end
end

Solution.main()
