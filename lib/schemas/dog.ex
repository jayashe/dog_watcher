defmodule DW.Dog do
  use Ecto.Schema

  schema "dogs" do
    field :name, :string
    field :breed, :string
    field :weight, :integer

    timestamps()
  end
end
