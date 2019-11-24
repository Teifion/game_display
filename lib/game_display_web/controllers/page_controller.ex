defmodule GameDisplayWeb.PageController do
  use GameDisplayWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
