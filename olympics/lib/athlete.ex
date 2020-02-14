defmodule Athlete do
  use Ecto.Schema

  schema "athletes" do
    field(:name, :string)
    has_one(:medal, Medal)
    timestamps()
  end
end
