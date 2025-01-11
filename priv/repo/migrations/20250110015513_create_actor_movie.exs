defmodule PhoenixApi.Repo.Migrations.CreateActorMovie do
  use Ecto.Migration

  def change do
    create table(:actor_movie) do
      add :actor_id, references(:actors, on_delete: :nothing)
      add :movie_id, references(:movies, on_delete: :nothing)

      timestamps(type: :utc_datetime)
    end

    create index(:actor_movie, [:actor_id])
    create index(:actor_movie, [:movie_id])
  end
end
