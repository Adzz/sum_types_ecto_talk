defmodule Reward do
  @behaviour Ecto.Type

  @impl true
  def type, do: :map

  @impl true
  @doc """
  Called when `cast`ing and when querying:
      Ecto.Changeset.cast(%Athlete{}, %{reward: %{"amount" => "100"}}, [:reward])
      Olympics.Repo.get_by(Athlete, reward: %PrizeMoney{amount: "100"})

  In both cases the "100" is turned into 100. We have to handle string and atom keys here because
  both are possible.
  """
  def cast(reward = %{"type" => _}) do
    EctoMorph.cast_to_struct(reward, Medal)
  end

  def cast(reward = %{type: _}) do
    EctoMorph.cast_to_struct(reward, Medal)
  end

  def cast(reward = %{"amount" => _}) do
    EctoMorph.cast_to_struct(reward, PrizeMoney)
  end

  def cast(reward = %{amount: _}) do
    EctoMorph.cast_to_struct(reward, PrizeMoney)
  end

  def cast(reward), do: raise("We do not recognise that reward type! #{inspect(reward)}")

  @impl true
  @doc """
  Dump is in charge of turning our elixir struct into something that the database can store. As we
  are using jsonb column, we can lean on the Jason lib, have dump create structs, then implement the
  Jason protocol for each struct.
  """
  def dump(reward = %{"type" => _}) do
    EctoMorph.cast_to_struct(reward, Medal)
  end

  def dump(reward = %{type: _}) do
    EctoMorph.cast_to_struct(reward, Medal)
  end

  def dump(reward = %{"amount" => _}) do
    EctoMorph.cast_to_struct(reward, PrizeMoney)
  end

  def dump(reward = %{amount: _}) do
    EctoMorph.cast_to_struct(reward, PrizeMoney)
  end

  @impl true
  @doc """
  Load gets whatever is in the db column and gives us the chance to turn it into our own struct. So
  we can be sure it will only have string keys which is nice.
  """
  def load(reward = %{"type" => _}) do
    EctoMorph.cast_to_struct(reward, Medal)
  end

  def load(reward = %{"amount" => _}) do
    EctoMorph.cast_to_struct(reward, PrizeMoney)
  end

  @impl true
  def embed_as(_), do: :self
  @impl true
  def equal?(left, right), do: left == right
end
