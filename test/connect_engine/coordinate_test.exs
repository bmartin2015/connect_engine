defmodule ConnectEngine.CoordinateTest do
  use ExUnit.Case
  doctest ConnectEngine.Coordinate

  alias ConnectEngine.Coordinate

  # These should be doc tests, but they fail :(
  test "returns a valid struct with valid row/col" do
    assert Coordinate.new(1, 1) == {:ok, %Coordinate{row: 1, col: 1}}
  end

  test "returns error with invalid row/col" do
    assert Coordinate.new(12, 13) == {:error, :invalid_coordinate}
  end
end
