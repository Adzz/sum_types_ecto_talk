defmodule Medal do
  use Ecto.Schema

  @derive {Jason.Encoder, only: [:type, :championship_points_earned]}
  embedded_schema do
    field(:type, :string)
    field(:championship_points_earned, :integer)
  end
end
