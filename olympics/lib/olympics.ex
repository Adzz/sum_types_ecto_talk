defmodule Olympics do
  @moduledoc """
  Documentation for Olympics.
  """

  def record_race(data) do
    # data = %{name: "Jeff Vader", medal: %{type: "GOLD", championship_points_earned: 30}}

    data = %{
      name: "Jane Vader",
      prize_money: %{rank: "FIRST", amount: 20_000, championship_points_earned: 30}
    }

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

  def atheletes_winnings(%{medal: nil}) do
    athelete.prize_money
  end

  def atheletes_winnings(%{prize_money: nil}) do
    athelete.medal
  end

  # There's still a bug in this code, can you spot it?
  # Imagine if the athletics foundation changes their mind again....
  # THE CHAOS. Combinatorial nightmare.
end
