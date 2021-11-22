defmodule LiveViewQuestsWeb.PageController do
  use LiveViewQuestsWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
