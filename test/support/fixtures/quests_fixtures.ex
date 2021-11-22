defmodule LiveViewQuests.QuestsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `LiveViewQuests.Quests` context.
  """

  @doc """
  Generate a quest.
  """
  def quest_fixture(attrs \\ %{}) do
    {:ok, quest} =
      attrs
      |> Enum.into(%{
        completed: true,
        questReqs: "some questReqs",
        title: "some title"
      })
      |> LiveViewQuests.Quests.create_quest()

    quest
  end
end
