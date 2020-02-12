defmodule ElixirReverseTest do
  use ExUnit.Case
  doctest ElixirReverse

  test "greets the world" do
    assert ElixirReverse.hello() == :world
  end
end
