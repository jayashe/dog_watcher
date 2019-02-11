defmodule DW.Repo.Migrations.CreateEmployeesTable do
  use Ecto.Migration

  def change do
    create table(:employees) do
      add :name, :string

      timestamps()
    end
  end
end
