defmodule DW.Repo.Migrations.CreateDogSightingsTable do
  use Ecto.Migration

  def change do
    create table(:dog_sightings) do
      add :employee_id, :integer, references(:employees)
      add :dog_id, :integer, references(:dogs)

      timestamps()
    end
  end
end
