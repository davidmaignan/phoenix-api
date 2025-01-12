defmodule PhoenixApiWeb.MovieLive.New do
  alias PhoenixApi.Movies.Movie
  use PhoenixApiWeb, :live_view

  @impl Phoenix.LiveView
  def mount(_params, _session, socket) do
    changeset = Movie.changeset(%Movie{})

    socket =
      socket
      |> assign(:form, to_form(changeset))

    {:ok, socket}
  end

  @impl Phoenix.LiveView
  def handle_event("submit", %{"movie" => movie_params}, socket) do
    case PhoenixApi.Movies.create_movie(movie_params) do
      {:ok, _movie} ->
        socket =
          socket
          |> put_flash(:info, "Movie created successfully")
          |> push_navigate(to: ~p"/movies")

        {:noreply, socket}

      {:error, changeset} ->
        socket =
          socket
          |> assign(:changeset, changeset)

        {:noreply, socket}
    end
  end
end
