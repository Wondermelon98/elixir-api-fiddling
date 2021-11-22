defmodule LiveViewQuests.QuestsTest do
  use LiveViewQuests.DataCase

  alias LiveViewQuests.Quests

  describe "quests" do
    alias LiveViewQuests.Quests.Quest

    import LiveViewQuests.QuestsFixtures

    @invalid_attrs %{completed: nil, questReqs: nil, title: nil}

    test "list_quests/0 returns all quests" do
      quest = quest_fixture()
      assert Quests.list_quests() == [quest]
    end

    test "get_quest!/1 returns the quest with given id" do
      quest = quest_fixture()
      assert Quests.get_quest!(quest.id) == quest
    end

    test "create_quest/1 with valid data creates a quest" do
      valid_attrs = %{completed: true, questReqs: "some questReqs", title: "some title"}

      assert {:ok, %Quest{} = quest} = Quests.create_quest(valid_attrs)
      assert quest.completed == true
      assert quest.questReqs == "some questReqs"
      assert quest.title == "some title"
    end

    test "create_quest/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Quests.create_quest(@invalid_attrs)
    end

    test "update_quest/2 with valid data updates the quest" do
      quest = quest_fixture()
      update_attrs = %{completed: false, questReqs: "some updated questReqs", title: "some updated title"}

      assert {:ok, %Quest{} = quest} = Quests.update_quest(quest, update_attrs)
      assert quest.completed == false
      assert quest.questReqs == "some updated questReqs"
      assert quest.title == "some updated title"
    end

    test "update_quest/2 with invalid data returns error changeset" do
      quest = quest_fixture()
      assert {:error, %Ecto.Changeset{}} = Quests.update_quest(quest, @invalid_attrs)
      assert quest == Quests.get_quest!(quest.id)
    end

    test "delete_quest/1 deletes the quest" do
      quest = quest_fixture()
      assert {:ok, %Quest{}} = Quests.delete_quest(quest)
      assert_raise Ecto.NoResultsError, fn -> Quests.get_quest!(quest.id) end
    end

    test "change_quest/1 returns a quest changeset" do
      quest = quest_fixture()
      assert %Ecto.Changeset{} = Quests.change_quest(quest)
    end
  end
end
