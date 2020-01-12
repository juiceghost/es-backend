defmodule EsBackendTest do
  use ExUnit.Case
  doctest EsBackend

  test "greets the world" do
    assert EsBackend.hello() == :world
  end
end
