defmodule PhoenixApi.Repo.Migrations.CreateActors do
  use Ecto.Migration

  def change do
    create table(:actors) do
      add :name, :string
      add :country, :string

      timestamps(type: :utc_datetime)
    end
  end
end
