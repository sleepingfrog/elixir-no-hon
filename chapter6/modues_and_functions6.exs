defmodule Chop do
  def guess(actual, min..max)  when  (min <= max) and (actual in min..max) do
    _guess(actual, min..max, div(min + max, 2))
  end

  defp _print(current), do: IO.puts "Is is #{current}"

  defp _guess(actual, _, actual), do: IO.puts actual

  defp _guess(actual, _..max, current) when current < actual do
    _print(current)
    _guess(actual, current..max, div(current + max, 2))
  end

  defp _guess(actual, min.._, current) when actual < current do
    _print(current)
    _guess(actual, min..current, div(current + min, 2))
  end
end
