defmodule PhoenixApi.Repo.Migrations.CreateMovies do
  use Ecto.Migration

  def change do
    create table(:movies) do
      add :title, :string

      timestamps(type: :utc_datetime)
    end
  end
end
