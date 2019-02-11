# DogWatcher

A series of exercises for learning how to use Ecto. Fill out the functions in dog_watcher.ex to learn how to use different ecto functions. Solutions are filled in on the solutions branch

## Setup

### Prerequisites
You should have asdf setup and postgres running locally. 

### Directions
1. Clone this repo
2. `mix deps.get`
3. `mix ecto.create`
4. `mix ecto.migrate`

To verify that setup completed successfully, run `iex -S mix` and then run `DW.Repo.all(Dw.Employee)`. If you see an output of a list of employees, your app is set up correctly.
