defmodule PhoenixApi.Movies.Movie do
  use Ecto.Schema
  import Ecto.Changeset

  schema "movies" do
    field :title, :string

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(movie, attrs) do
    movie
    |> cast(attrs, [:title])
    |> validate_required([:title])
  end
end
