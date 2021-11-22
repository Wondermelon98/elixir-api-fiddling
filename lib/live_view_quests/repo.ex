defmodule LiveViewQuests.Repo do
  use Ecto.Repo,
    otp_app: :live_view_quests,
    adapter: Ecto.Adapters.Postgres
end
