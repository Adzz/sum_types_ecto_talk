defmodule Olympics do
  @moduledoc """
  Documentation for Olympics.
  """

  def record_race() do
    data = %{name: "Jeff Vader", reward: %{type: "GOLD", championship_points_earned: 30}}

    # data = %{
    #   name: "Jane Vader",
    #   reward: %{rank: "FIRST", amount: 20_000, championship_points_earned: 30}
    # }

    EctoMorph.generate_changeset(data, Athlete)
    |> Olympics.Repo.insert!()
  end

  def atheletes_winnings(athlete), do: DollarValue.for(athlete.reward)
end

defprotocol DollarValue do
  def for(reward)
end

defimpl DollarValue, for: Medal do
  def for(%{type: "GOLD"}) do
    # Go find the Price of Gold right now...
    1_000_000
  end

  def for(%{type: "SILVER"}) do
    100_000
  end

  def for(%{type: "BRONZE"}) do
    10_000
  end
end

defimpl DollarValue, for: PrizeMoney do
  def for(%{amount: amount}), do: amount
end
