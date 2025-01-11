defmodule PhoenixApi.Movies.Movie do
  use Ecto.Schema
  import Ecto.Changeset
  alias PhoenixApi.Actors.Actor

  schema "movies" do
    field :title, :string
    many_to_many :actors, Actor, join_through: "movies_actors"
    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(movie, attrs) do
    movie
    |> cast(attrs, [:title])
    |> validate_required([:title])
  end
end
