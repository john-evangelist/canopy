defmodule Canopy.ControlPlaneTest do
  use ExUnit.Case
  doctest Canopy.ControlPlane

  test "greets the world" do
    assert Canopy.ControlPlane.hello() == :world
  end
end
