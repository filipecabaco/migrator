defmodule Migrator.MixProject do
  use Mix.Project

  def project do
    [
      app: :migrator,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Migrator, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ecto, "~> 3.9", override: true},
      {:ecto_sql, "~> 3.9"},
      {:postgrex, ">= 0.0.0"}
    ]
  end
end
