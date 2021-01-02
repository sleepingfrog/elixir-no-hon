defmodule MyList do
  def caesar([], _), do: []
  def caesar([head|tail], n), do: [_caesar(head, n) | caesar(tail, n)]

  defp _caesar(char, n) do
    97 + rem((char + n) - 97, 26)
  end
end
