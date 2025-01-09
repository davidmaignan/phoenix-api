defmodule PhoenixApi.Repo.Migrations.CreateFilms do
  use Ecto.Migration

  def change do
    create table(:films) do
      add :title, :string

      timestamps(type: :utc_datetime)
    end
  end
end
