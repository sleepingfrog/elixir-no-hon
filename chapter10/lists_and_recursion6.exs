defmodule MyList do
  def flatten(list), do: _flatten(list, [])

  defp _flatten([], flatten), do: flatten
  defp _flatten([head|tail], flatten) when is_list(head) do
    _flatten(head ++ tail, flatten)
  end
  defp _flatten([head|tail], flatten) do
    _flatten(tail, flatten ++ [head])
  end
end
