defmodule DogWatcherTest do
  use ExUnit.Case
  doctest DogWatcher

  test "greets the world" do
    assert DogWatcher.hello() == :world
  end
end
