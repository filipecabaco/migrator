defmodule MigratorTest do
  use ExUnit.Case
  doctest Migrator

  test "greets the world" do
    assert Migrator.hello() == :world
  end
end
