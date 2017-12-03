defmodule ConnectEngine.Coordinate do
  @moduledoc """
  Defines a ConnectEngine Coordinate

  Coordinates provide a means for encoding a `row` and `col` into an Elixir
  `struct`.
  """
  alias __MODULE__

  @enforce_keys [:row, :col]
  @col_range 1..7
  @row_range 1..6

  defstruct [:row, :col]

  @doc """
  Defines the Coordinate struct

  * :row - row coordinate (1 to 6)
  * :col - column coordinate (1 to 7)
  """
  def new(row, col) when row in(@row_range) and col in(@col_range) do
    {:ok, %Coordinate{row: row, col: col}}
  end
  def new(_row, _col), do: {:error, :invalid_coordinate}
end
