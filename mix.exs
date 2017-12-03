defmodule ConnectEngine.Mixfile do
  use Mix.Project

  def project do
    [
      app: :connect_engine,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps(),
      name: "ConnectEngine",
      description: "An engine for running a Connect 4 style game."
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {ConnectEngine.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:credo, "~> 0.8", only: [:dev, :test], runtime: false}
    ]
  end
end
