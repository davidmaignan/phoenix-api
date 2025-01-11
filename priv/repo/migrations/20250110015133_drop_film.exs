defmodule PhoenixApi.Repo.Migrations.DropFilm do
  use Ecto.Migration

  def change do
    drop table(:actor_film)
    drop table(:films)
  end
end
