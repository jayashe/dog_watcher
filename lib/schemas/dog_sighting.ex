defmodule DW.DogSighting do
  use Ecto.Schema

  schema "dog_sightings" do
    belongs_to(:dog, DW.Dog)
    belongs_to(:employee, DW.Employee)

    timestamps()
  end

  def changeset(model, params) do
    Ecto.Changeset.cast(model, params, [])
  end
end
