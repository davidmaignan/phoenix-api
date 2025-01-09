defmodule PhoenixApiWeb.PageController do
  use PhoenixApiWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end

  def actors(conn, _params) do
    actors = [
      %{name: "Keanu Reeves", age: 56},
      %{name: "Laurence Fishburne", age: 59},
      %{name: "Carrie-Anne Moss", age: 53}
    ]

    IO.puts("Actors: #{inspect(actors)}")

    render(conn, :actors, actors: actors, layout: false)
    # json(conn, %{actors: actors})
  end
end
