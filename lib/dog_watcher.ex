defmodule DogWatcher do
  import Ecto.Query

  # Return a list of all employees
  def list_employees() do
    DW.Employee
    |> DW.Repo.all()
  end

  # Return a list of dogs who's weight is less than 30 pounds
  def list_small_dogs() do
    query =
      from(d in DW.Dog,
           where: d.weight < 30)

    DW.Repo.all(query)
  end

  # Return a list of dogs who match the given breed
  def list_dogs_by_breed(breed) do
    query =
      from(d in DW.Dog,
           where: d.breed == ^breed)

    DW.Repo.all(query)
  end

  # Return a single employee who's name matches the query
  #  After dog sightings are implemented, return a list of all sightings for that employee alongside
  def find_employee_by_name(name) do
    query =
      from(e in DW.Employee,
           where: e.name == ^name)

    DW.Repo.one!(query)
    |> DW.Repo.preload([dog_sightings: [:dog]])
  end

  # Return a single dog who's name matches the query
  def find_dog_by_name(name) do
    query =
      from(d in DW.Dog,
           where: d.name == ^name)

    DW.Repo.one!(query)
  end

  def change_dog_breed(dog, new_name) do
    params = %{breed: new_name}

    DW.Dog.changeset(dog, params)
    |> DW.Repo.update()
  end

  # Given a reference to an employee and a dog, add a sighting between those two entities
  def add_dog_sighting(employee, dog) do
    params = %{
      dog_sightings: [
        %{dog_id: dog.id}
      ]
    }
    DW.Employee.changeset(employee, params)
    |> DW.Repo.update()
  end
end
