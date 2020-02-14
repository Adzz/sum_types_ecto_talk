defmodule Olympics.Repo.Migrations.AddMedals do
  use Ecto.Migration

  def change do
    create(table(:medals)) do
      add(:type, :text, null: false)
      add(:championship_points_earned, :integer)
      add(:athlete_id, references(:athletes), null: false)
      timestamps()
    end
  end
end
