defmodule EmillaWatcherTest do
  use ExUnit.Case
  doctest EmillaWatcher

  test "greets the world" do
    assert EmillaWatcher.hello() == :world
  end
end
