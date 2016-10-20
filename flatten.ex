defmodule MyList do
  def flatten([]), do: []

  def flatten([head | tail]) do
    flatten(head) ++ flatten(tail)
  end

  def flatten(head), do: [head]
end

defmodule MyListPipe do
  def flatten(list) do
    list |> List.flatten |>  Enum.map(fn(x) -> x * x end) |> Enum.reverse
  end
end
