defmodule Migrator do
  use Application

  def start(_, _) do
    children = [{Repo, url: "postgres://postgres:postgres@localhost:5432/migrations"}]
    Supervisor.start_link(children, strategy: :one_for_one, name: __MODULE__)
  end

  def fail do
    Ecto.Migrator.run(Repo, [{0, Migration}], :up, all: true)
  end

  def success do
    Code.ensure_loaded!(Migration)
    Ecto.Migrator.run(Repo, [{0, Migration}], :up, all: true)
  end

  def down do
    Code.ensure_loaded!(Migration)
    Ecto.Migrator.run(Repo, [{0, Migration}], :down, all: true)
  end
end
