defmodule PhoenixApi.Actors.Actor do
  use Ecto.Schema
  import Ecto.Changeset

  schema "actors" do
    field :name, :string
    field :country, :string

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(actor, attrs) do
    actor
    |> cast(attrs, [:name, :country])
    |> validate_required([:name, :country])
  end
end
