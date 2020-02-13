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

  ## Rock Sizer, papers example  as practice after watching video

  ## Please call winner with rock seazer game as string i.e "RPSP" -> [P,S]

  @winner_map %{"R" => "S", "S" => "P", "P" => "R"}

  def winner(string) do
    char_list = String.split(string, "", trim: true)

    get_winners(char_list)
  end

  def get_winners([p1, p2 | tail]) do
    whowin(p1, p2) ++ get_winners(tail)
  end

  def get_winners([]), do: []
  def whowin(p1, p1), do: []

  def whowin(p1, p2) do
    case @winner_map[p1] == p2 do
      true ->
        [p1]

      false ->
        [p2]
    end
  end

  ##############################
  ## fibonacci recursion way bo

  def find(nth) do
    list = [1, 1]
    fib(list, nth)
  end

  def fib(list, 2) do
    Enum.reverse(list)
  end

  def fib(list, n) do
    [first_elem, second_elem | _] = list
    fib([first_elem + second_elem | list], n - 1)
  end
end
