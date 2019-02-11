defmodule DW.Repo.Migrations.CreateDogsTable do
  use Ecto.Migration

  def change do
    create table(:dogs) do
      add :name, :string
      add :breed, :string
      add :weight, :integer

      timestamps()
    end
  end
end
