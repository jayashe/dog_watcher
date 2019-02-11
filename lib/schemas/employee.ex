defmodule DW.Employee do
  use Ecto.Schema

  schema "employees" do
    field :name, :string

    timestamps()
  end
end
