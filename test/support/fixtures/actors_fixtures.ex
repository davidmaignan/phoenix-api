defmodule PhoenixApi.ActorsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `PhoenixApi.Actors` context.
  """

  @doc """
  Generate a actor.
  """
  def actor_fixture(attrs \\ %{}) do
    {:ok, actor} =
      attrs
      |> Enum.into(%{
        country: "France",
        name: "Marc Dupont"
      })
      |> PhoenixApi.Actors.create_actor()

    actor
  end
end
