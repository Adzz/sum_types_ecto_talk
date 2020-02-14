defmodule Athlete do
  use Ecto.Schema

  schema "athletes" do
    field(:name, :string)
    has_one(:medal, Medal)
    has_one(:prize_money, PrizeMoney)
    timestamps()
  end
end
