defmodule DW.Employee do
  use Ecto.Schema

  schema "employees" do
    field :name, :string
    has_many(:dog_sightings, DW.DogSighting)

    timestamps()
  end

  def changeset(model, params) do
    model
    |> Ecto.Changeset.cast(params, [])
    |> Ecto.Changeset.cast_assoc(:dog_sightings)
  end
end
