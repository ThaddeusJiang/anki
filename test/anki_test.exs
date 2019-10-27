defmodule AnkiTest do
  use ExUnit.Case
  doctest Anki

  test "greets the world" do
    assert Anki.hello() == :world
  end
end
