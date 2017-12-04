defmodule ConnectEngine.DiscTest do
  use ExUnit.Case
  doctest ConnectEngine.Disc

  alias ConnectEngine.Disc

  # These should be doc tests, but they fail :(
  test "returns a valid struct with valid coordinate and player" do
    assert Disc.new(:coordinate1, :player1) == {:ok, %Disc{coordinate: :coordinate1, player: :player1}}
  end
end
