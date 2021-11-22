defmodule LiveViewQuests.Quests.Quest do
  use Ecto.Schema
  import Ecto.Changeset

  schema "quests" do
    field :completed, :boolean, default: false
    field :questReqs, :string
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(quest, attrs) do
    quest
    |> cast(attrs, [:title, :questReqs, :completed])
    |> validate_required([:title, :questReqs, :completed])
  end
end
