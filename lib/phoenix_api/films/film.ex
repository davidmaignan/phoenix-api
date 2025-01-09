defmodule PhoenixApi.Films.Film do
  use Ecto.Schema
  import Ecto.Changeset

  schema "films" do
    field :title, :string

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(film, attrs) do
    film
    |> cast(attrs, [:title])
    |> validate_required([:title])
  end
end
