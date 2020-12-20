defmodule Flatten do
  def unwrap(ele, acc) when (is_list ele) do
    flat(ele, acc)
  end
  def unwrap(ele, acc) do
    acc ++ [ele]
  end

  def flat(list), do: flat(list, [])
  def flat(list, res) do
    list
    |> List.foldl(res, &(unwrap/2))
  end
end
