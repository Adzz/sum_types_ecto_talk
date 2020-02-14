defmodule Athlete do
  use Ecto.Schema

  schema "athletes" do
    field(:name, :string)
    field(:reward, Reward)
    timestamps()
  end
end
