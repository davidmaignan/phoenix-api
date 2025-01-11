defmodule PhoenixApi.Repo.Migrations.CreateActorFilm do
  use Ecto.Migration

  def change do
    create table(:actor_film) do
      add :actor_id, references(:actors, on_delete: :nothing)
      add :film_id, references(:films, on_delete: :nothing)

      timestamps(type: :utc_datetime)
    end

    create index(:actor_film, [:actor_id])
    create index(:actor_film, [:film_id])
  end
end
