defmodule PhoenixApi.Actors.Actor do
  use Ecto.Schema
  import Ecto.Changeset

  alias PhoenixApi.Movies.Movie

  schema "actors" do
    field :name, :string
    field :country, :string
    many_to_many :movies, Movie, join_through: "actor_movie"

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(actor, attrs) do
    actor
    |> cast(attrs, [:name, :country])
    |> validate_required([:name, :country])
  end
end
