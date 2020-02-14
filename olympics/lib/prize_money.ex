defmodule PrizeMoney do
  use Ecto.Schema

  schema "prize_moneys" do
    field(:rank, :integer)
    field(:amount, :integer)
    field(:championship_points_earned, :integer)
    belongs_to(:athlete, Athlete)
    timestamps()
  end
end
