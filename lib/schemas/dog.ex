defmodule DW.Dog do
  use Ecto.Schema

  schema "dogs" do
    field :name, :string
    field :breed, :string
    field :weight, :integer
    has_many(:dog_sightings, DW.DogSighting)

    timestamps()
  end

  def changeset(model, params) do
    model
    |> Ecto.Changeset.cast(params, [:breed, :weight])
  end
end
