defmodule Olympics.Repo.Migrations.FixThisMess do
  use Ecto.Migration

  def change do
    alter(table(:athletes)) do
      add(:reward, :map)
    end
  end
end
