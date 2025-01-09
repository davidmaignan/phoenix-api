defmodule PhoenixApi.FilmsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `PhoenixApi.Films` context.
  """

  @doc """
  Generate a film.
  """
  def film_fixture(attrs \\ %{}) do
    {:ok, film} =
      attrs
      |> Enum.into(%{
        title: "some title"
      })
      |> PhoenixApi.Films.create_film()

    film
  end
end
