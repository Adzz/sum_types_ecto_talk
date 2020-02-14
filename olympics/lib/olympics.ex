defmodule Olympics do
  @moduledoc """
  Documentation for Olympics.
  """

  def record_race() do
    data = %{name: "Jeff Vader", medal: %{type: "GOLD", championship_points_earned: 30}}

    # %Athlete{}
    # |> Ecto.Changeset.cast(data, [:name])
    # |> Ecto.Changeset.cast_assoc(:medal,
    #   with: fn medal, changes ->
    #     Ecto.Changeset.cast(medal, changes, [:type, :championship_points_earned])
    #   end
    # )
    # |> Olympics.Repo.insert!()

    EctoMorph.generate_changeset(data, Athlete)
    |> Olympics.Repo.insert!()
  end

  def atheletes_winnings(athelete) do
    athelete.medal
  end
end
