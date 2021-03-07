defmodule MyList do 
  def span(from, to) when from > to, do: []
  def span(from, to) when from < to, do: [from | span(from + 1, to)]
  def span(from, to) when from == to, do: [to]
end

defmodule Prime do
  def prime?(2), do: true
  def prime?(n) when n < 2, do: false
  def prime?(n), do: prime?(n, 2)

  defp prime?(n, m) when n == m, do: true
  defp prime?(n, m) when rem(n, m) == 0, do: false
  defp prime?(n, m), do: prime?(n, m + 1)
end

# for x <- MyList.span(1, 100), Prime.prime?(x), do: x
