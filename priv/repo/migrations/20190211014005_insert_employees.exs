defmodule DW.Repo.Migrations.InsertEmployees do
  use Ecto.Migration

  def change do
    execute """
    INSERT INTO
      employees (name, inserted_at, updated_at)
    VALUES
      ('Ariana', now(), now()),
      ('Alex', now(), now()),
      ('Brandon', now(), now()),
      ('Jay', now(), now()),
      ('Joe', now(), now()),
      ('Samya', now(), now()),
      ( 'Sundi', now(), now())
    """
  end
end
