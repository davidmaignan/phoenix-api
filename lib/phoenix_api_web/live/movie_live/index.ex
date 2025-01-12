defmodule PhoenixApiWeb.MovieLive.Index do
  alias PhoenixApi.Movies.Movie
  use PhoenixApiWeb, :live_view

  alias PhoenixApi.Movies

  def mount(_params, _session, socket) do
    socket = socket |> assign(:movies, Movies.list_movies())
    {:ok, socket}
  end
end
