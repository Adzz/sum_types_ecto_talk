defmodule PrizeMoney do
  use Ecto.Schema

  @derive {Jason.Encoder, only: [:rank, :amount, :championship_points_earned]}
  embedded_schema do
    field(:rank, :string)
    field(:amount, :integer)
    field(:championship_points_earned, :integer)
  end
end
