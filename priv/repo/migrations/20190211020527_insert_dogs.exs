defmodule DW.Repo.Migrations.InsertDogs do
  use Ecto.Migration

  def change do
    execute """
    INSERT INTO
      dogs (name, breed, weight, inserted_at, updated_at)
    VALUES
      ('Bean', 'Bernadoodle', 75, now(), now()),
      ('Yoshi', 'Chiweenie', 15, now(), now()),
      ('Petunia', 'Pug', 20, now(), now()),
      ('Benny', 'Corgi', 31, now(), now()),
      ('Winston', 'Corgi', 23, now(), now())
    """

  end
end
