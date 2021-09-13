defmodule Listlength do

  def call(list), do: sum_items(list, 0)

  defp sum_items([], acc), do: acc

  defp sum_items([_ | tail], acc) do
    sum_items(tail, acc + 1) # this accumulator is passed by params to force the compiler to use TCO (tail call optimization)
  end
end
