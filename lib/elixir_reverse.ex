defmodule ElixirReverse do
  @moduledoc """
  Documentation for ElixirReverse.
  """

  @doc """
  Reverse a list of integers

  [7,3,5,1] --> [1,5,3,7]

  1 [7,3,5]

  7 [3,5]
  3 [5]


  ## Examples
  """
  def reverse_list(list) do
    reversing(list, [])
  end

  def reversing([], reversed_list) do
    reversed_list
  end

  def reversing([h | t], reversed_list) do
    reversed_list = [h] ++ reversed_list
    reversing(t, reversed_list)
  end
end
