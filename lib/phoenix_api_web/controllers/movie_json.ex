defmodule PhoenixApiWeb.MovieJSON do
  alias PhoenixApi.Movies.Movie

  @doc """
  Renders a list of movies.
  """
  def index(%{movies: movies}) do
    %{data: for(movie <- movies, do: data(movie))}
  end

  @doc """
  Renders a single movie.
  """
  def show(%{movie: movie}) do
    %{data: data(movie)}
  end

  defp data(%Movie{} = movie) do
    %{
      id: movie.id,
      title: movie.title
    }
  end
end
