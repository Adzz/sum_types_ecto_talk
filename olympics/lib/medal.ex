defmodule Medal do
  use Ecto.Schema

  schema "medals" do
    field(:type, :string)
    field(:championship_points_earned, :integer)
    belongs_to(:athlete, Athlete)
    timestamps()
  end
end
