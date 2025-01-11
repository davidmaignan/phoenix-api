defmodule PhoenixApi.ActorMovie do
  use Ecto.Schema
  import Ecto.Changeset

  schema "actor_movie" do

    field :actor_id, :id
    field :movie_id, :id

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(actor_movie, attrs) do
    actor_movie
    |> cast(attrs, [])
    |> validate_required([])
  end
end
