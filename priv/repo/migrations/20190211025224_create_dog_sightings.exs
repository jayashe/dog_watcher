defmodule DW.Repo.Migrations.CreateDogSightings do
  use Ecto.Migration

  def change do
    create table(:dog_sightings) do
      add :employee_id, references(:employees, on_delete: :nothing)
      add :dog_id, references(:dogs, on_delete: :nothing)

      timestamps()
    end
  end
end
