defmodule ConnectEngine.Disc do
@moduledoc """
  Defines a ConnectEngine Disc

  Discs provide a means for encoding a `Coordinate` into `Disc` on
  the game `Board`.
"""
alias ConnectEngine.Disc

@enforce_keys [:coordinate, :player]
defstruct [:coordinate, :player]

  @doc """
  Defines the Disc struct

  * :coordinate - %ConnectEngine.Coordinate{:row, :col}
  * :player - :player1 or :player2
  """
  def new(coordinate, player) do
    {:ok, %Disc{coordinate: coordinate, player: player}}
  end
end
