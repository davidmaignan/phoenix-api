defmodule PhoenixApi.ActorMovieFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `PhoenixApi.Movies` context.
  """

  @doc """
  Generate a movie.
  """
  def actor_movie_fixture(attrs \\ %{}) do
    {:ok, actor_movie} =
      attrs
      |> PhoenixApi.ActorMovie.create()

    actor_movie
  end
end
