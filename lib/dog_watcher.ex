defmodule DogWatcher do
  import Ecto.Query

  def list_employees() do
    DW.Employee
    |> DW.Repo.all()
  end

  def list_small_dogs() do
    query =
      from(d in DW.Dog,
           where: d.weight < 30)

    DW.Repo.all(query)
  end

  def find_employee_by_name(name) do
    query =
      from(d in DW.Employee,
           where: d.name == ^name)

    DW.Repo.one(query)
    |> DW.Repo.preload(:dog_sightings)
  end

  def find_dog_by_name(name) do
    query =
      from(d in DW.Dog,
           where: d.name == ^name)

    DW.Repo.one(query)
  end

  def change_dog_breed(dog, new_breed) do
    DW.Dog.changeset(dog, %{breed: new_breed})
    |> DW.Repo.update!()
  end

  def add_dog_sighting(employee, dog) do
    params = %{
      dog_sightings: [%{
        dog: dog
      }]
    }

    DW.Employee.changeset(employee, params)
    |> DW.Repo.update!()
  end
end
