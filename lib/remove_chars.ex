#defmodule Solution do
defmodule RemoveChars do
  def remove_chars(s) do
    s
    |> String.codepoints
    |> tl
    |> List.to_string
    |> String.reverse
    |> String.codepoints
    |> tl
    |> List.to_string
    |> String.reverse
  end

  def elegant_remove_chars(s) do
    String.slice(s, 1..-2)
  end
end
