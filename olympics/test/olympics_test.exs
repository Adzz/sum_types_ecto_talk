defmodule OlympicsTest do
  use ExUnit.Case
  doctest Olympics

  test "greets the world" do
    assert Olympics.hello() == :world
  end
end
