defmodule ArrayLeaders do
  def find_leader(number, []) when number > 0, do: [number]
  def find_leader(number, []) when number <= 0, do: []
  def find_leader(number, leaders) do
    if(number > Enum.sum(leaders), do: (leaders ++ [number]),
    else: leaders)
  end
  def get_sum([]), do: 0
  def get_sum(list) do
    Enum.sum(list)
  end
  def is_leader({num, index}, list), do: num > get_sum(List.delete_at(list, index))
  def array_leaders(nums) do
    nums
    |> Enum.with_index
    |> Enum.filter(&(is_leader &1, nums))
    |> Enum.map(fn {a,i}  -> a end)

  end
end
