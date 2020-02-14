defmodule Olympics.Repo.Migrations.AddPrizeMoneysTable do
  use Ecto.Migration

  def change do
    create(table(:prize_moneys)) do
      add(:rank, :text, null: false)
      add(:amount, :integer, null: false)
      add(:championship_points_earned, :integer)
      add(:athlete_id, references(:athletes), null: false)
      timestamps()
    end
  end
end
