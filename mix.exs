defmodule REST.Mixfile do
  use Mix.Project

  def project do
    [app: :rest,
     version: "5.10.3",
     description: "REST erlang interface generator",
     deps: deps(),
     package: package()]
  end

  def application() do
    [
      mod: {:rest, []},
      applications: [:public_key,:asn1,:kernel,:stdlib,:ranch,:cowboy,:syntax_tools,:compiler,:rocksdb,:kvs,:n2o,:erp]
    ]
  end

  def deps, do: [ {:ex_doc, ">= 0.0.0", only: :dev},
                  {:rocksdb, "~> 1.3.2"},
                  {:syn, "~> 1.6.3"},
                  {:erp, "~> 0.10.2"},
                  {:n2o, "~> 6.9.0"},
                  {:jsone, "~> 1.5.0"},
                  {:cowboy, "~> 2.5.0"} ]

  defp package do
    [files: ~w(src LICENSE mix.exs README.md rebar.config),
     licenses: ["MIT"],
     links: %{"GitHub" => "https://github.com/synrc/rest"}]
   end
end
