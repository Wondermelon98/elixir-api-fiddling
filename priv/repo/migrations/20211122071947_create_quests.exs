defmodule LiveViewQuests.Repo.Migrations.CreateQuests do
  use Ecto.Migration

  def change do
    create table(:quests) do
      add :title, :string
      add :questReqs, :string
      add :completed, :boolean, default: false, null: false

      timestamps()
    end
  end
end
