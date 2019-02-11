defmodule DW.Repo do
  use Ecto.Repo,
    otp_app: :dog_watcher,
    adapter: Ecto.Adapters.Postgres
end
