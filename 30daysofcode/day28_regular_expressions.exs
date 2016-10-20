# HackerRank "30 Days of Code" - Day 28 - Regular Expressions

defmodule Solution do

  defp is_gmail(email), do: email =~ ~r/@gmail.com$/
  defp show_name(email) do
    [name|_] = String.split(email, " ")
    IO.puts(name)
  end


  def main() do
    IO.gets("") # ignore first one
    IO.read(:stdio,:all)
    |> String.split("\n")
    |> Enum.filter(fn(x)->is_gmail(x) end)
    |> Enum.sort()
    |> Enum.map(fn(x)->show_name(x) end)
  end
end

Solution.main()
