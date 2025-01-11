defmodule PhoenixApi.MoviesFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `PhoenixApi.Movies` context.
  """

  @doc """
  Generate a movie.
  """
  def movie_fixture(attrs \\ %{}) do
    {:ok, movie} =
      attrs
      |> Enum.into(%{
        title: "some title"
      })
      |> PhoenixApi.Movies.create_movie()

    movie
  end
end
