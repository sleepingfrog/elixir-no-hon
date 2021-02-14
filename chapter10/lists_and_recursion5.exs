defmodule MyList do
  def each([], _), do: :ok
  def each([head|tail], func) do
    func.(head)
    each(tail, func)
  end

  def all?([], _), do: true
  def all?([head|tail], func), do: func.(head) && all?(tail, func)

  def take([], _), do: []
  def take([_], 0), do: []
  def take([head|tail], n), do: [head| take(tail, n - 1)]

  def split(list, n) when n < 0, do: _split(list, [], length(list) + n)
  def split(list, n), do: _split(list, [], n)

  defp _split([], first_list, _), do: { first_list, [] }
  defp _split(list, first_list, count) when count < 1, do: { first_list, list }
  defp _split([head|tail], first_list, count) do
    _split(tail, first_list ++ [head], count - 1)
  end

  def filter(list, func), do: _filter(list, [], func)

  defp _filter([], filtered, _), do: filtered
  defp _filter([head|tail], filtered, func) do
    if (func.(head)) do
      _filter(tail, filtered ++ [head], func)
    else
      _filter(tail, filtered, func)
    end
  end
end
