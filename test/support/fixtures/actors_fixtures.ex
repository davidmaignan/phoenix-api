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
        country: "some country",
        name: "some name"
      })
      |> PhoenixApi.Actors.create_actor()

    actor
  end
end
