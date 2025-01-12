defmodule PhoenixApi.ActorMovie do
  alias PhoenixApi.ActorMovie
  alias PhoenixApi.Repo
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
    |> cast(attrs, [:actor_id, :movie_id])
    |> validate_required([])
  end

  @doc """
  Creates a actor.

  ## Examples

      iex> create_actor(%{field: value})
      {:ok, %ActorMovie{}}

      iex> create_actor_movie(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create(attrs \\ %{}) do
    %ActorMovie{}
    |> ActorMovie.changeset(attrs)
    |> Repo.insert()
  end
end
