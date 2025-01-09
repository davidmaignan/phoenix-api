defmodule PhoenixApiWeb.ActorJSON do
  alias PhoenixApi.Actors.Actor

  @doc """
  Renders a list of actors.
  """
  def index(%{actors: actors}) do
    %{data: for(actor <- actors, do: data(actor))}
  end

  @doc """
  Renders a single actor.
  """
  def show(%{actor: actor}) do
    %{data: data(actor)}
  end

  defp data(%Actor{} = actor) do
    %{
      id: actor.id,
      name: actor.name,
      country: actor.country
    }
  end
end
