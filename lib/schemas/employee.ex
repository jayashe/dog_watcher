defmodule DW.Employee do
  use Ecto.Schema

  schema "employees" do
    field :name, :string
    has_many(:dog_sightings, DW.DogSighting)

    timestamps()
  end

  def changeset(model, params) do
    Ecto.Changeset.cast(model, params, [])
    |> Ecto.Changeset.cast_assoc(:dog_sightings)
  end
end
