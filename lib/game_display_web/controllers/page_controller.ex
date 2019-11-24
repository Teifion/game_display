defmodule GameDisplayWeb.PageController do
  use GameDisplayWeb, :controller

  @file_path "display_output.json"

  def index(conn, _params) do
    data = @file_path
    |> File.read!
    |> Jason.decode!

    conn
    |> assign(:data, data)
    |> render("index.html")
  end
end
