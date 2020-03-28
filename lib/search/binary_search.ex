defmodule ElixirAlgo.Search do
  @moduledoc """
  Binary Search Algorithm Implementation
  """

  @doc """
  performs binary search on a sorted list to find the element

  ## Examples:
      iex(1)>ElixirAlgo.Search.binary_search([1,2,3,4,5], 3)
      true
  """
  def binary_search([], _) do
    false
  end

  def binary_search(list, element) do
    {first_half, second_half} = Enum.split(list, round(length(list) / 2))
    [head | tail] = first_half

    flag =
      cond do
        head == element -> true
        head < element -> binary_search(tail, element)
        true -> false
      end

    if flag != true, do: binary_search(second_half, element), else: true
  end
end
