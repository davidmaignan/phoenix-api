defmodule PhoenixApiWeb.UserController do
  use PhoenixApiWeb, :controller

  def index(conn, _params) do
    IO.puts("User home page")
    render(conn, :index, layout: false)
  end
end
