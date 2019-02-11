defmodule DW.Application do
  @moduledoc false
  use Application

  def start(_type, _args) do
    import Supervisor.Spec

    children = [
      DW.Repo
    ]

    opts = [strategy: :one_for_one, name: DW.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
