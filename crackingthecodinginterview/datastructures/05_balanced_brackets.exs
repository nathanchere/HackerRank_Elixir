# HackerRank "Cracking The Coding Interview" - Data Structures (Stacks) - Balanced Brackets

defmodule Solution do

  defmacro is_match(a, b) do
    quote do: "[" == unquote(a) and "]" == unquote(b)
      or  "{" == unquote(a) and "}" == unquote(b)
      or  "(" == unquote(a) and ")" == unquote(b)
  end

  defmacro is_open_bracket(i) do
    quote do: "[" == unquote(i) or  "{" == unquote(i) or  "(" == unquote(i)
  end

  defmacro is_close_bracket(i) do
    quote do: "]" == unquote(i) or  "}" == unquote(i) or  ")" == unquote(i)
  end

  def get_input do
    _ = IO.gets("")

    IO.read(:stdio, :all)
    |> String.split(["\n"])
  end

  def detect_brackets(input, stack) when length(input) == 0 and length(stack) == 0, do: "YES"
  def detect_brackets(input, _) when length(input) == 0, do: "NO"

  def detect_brackets([head| _], stack) when is_close_bracket(head) and length(stack) == 0, do: "NO"
  def detect_brackets([head| tail], stack) when is_open_bracket(head), do: detect_brackets(tail, [head] ++ stack)

  def detect_brackets([head|tail], stack) do
    [head2 | tail2] = stack
    cond do
      is_open_bracket(head) ->
        detect_brackets(tail, [head] ++ stack)
      is_match(head2, head) ->
        detect_brackets(tail, tail2)
      true ->
        "NO"
    end
  end

  def main() do
    get_input
    |> Enum.map(fn(x) -> String.graphemes(x) end)
    |> Enum.map(fn(x) -> detect_brackets(x, []) end)
    |> Enum.map(fn(x) -> IO.puts(x) end)
  end
end

Solution.main()
