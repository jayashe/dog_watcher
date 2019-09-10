defmodule DW.Dog do
  use Ecto.Schema

  schema "dogs" do
    field :name, :string
    field :breed, :string
    field :weight, :integer

    timestamps()
  end

  def changeset(model, params) do
    Ecto.Changeset.cast(model, params, [:breed])
  end
end
