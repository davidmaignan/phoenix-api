defmodule PhoenixApiWeb.FilmJSON do
  alias PhoenixApi.Films.Film

  @doc """
  Renders a list of films.
  """
  def index(%{films: films}) do
    %{data: for(film <- films, do: data(film))}
  end

  @doc """
  Renders a single film.
  """
  def show(%{film: film}) do
    %{data: data(film)}
  end

  defp data(%Film{} = film) do
    %{
      id: film.id,
      title: film.title
    }
  end
end
