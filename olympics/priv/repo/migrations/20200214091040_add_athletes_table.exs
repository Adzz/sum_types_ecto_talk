defmodule Olympics.Repo.Migrations.AddAthletesTable do
  use Ecto.Migration

  def change do
    create(table(:athletes)) do
      add(:name, :text, null: false)
      timestamps()
    end
  end
end
