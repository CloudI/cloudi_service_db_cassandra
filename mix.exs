defmodule CloudIServiceDbCassandra do
  use Mix.Project

  def project do
    [app: :cloudi_service_db_cassandra,
     version: "1.5.1",
     language: :erlang,
     description: description,
     package: package,
     deps: deps]
  end

  defp deps do
    [# TODO, erlang_cassandra breaks compilation due to 17.x dict:dict/0 change
     {:erlang_cassandra,
      [git: "https://github.com/dieswaytoofast/erlang_cassandra.git",
       ref: "master"]},
     {:proper,
      [git: "https://github.com/manopapad/proper.git",
       ref: "master"]},
     {:poolboy, "~> 1.4.2", override: true},
     # confirm dependencies due to erlang_cassandra
     {:jsx, "~> 2.1.1", override: true},
     {:reltool_util, "~> 1.5.1", override: true},
     {:uuid, "~> 1.5.1", hex: :uuid_erl},
     {:cloudi_core, "~> 1.5.1"}]
  end

  defp description do
    "Erlang/Elixir Cloud Framework Cassandra Service"
  end

  defp package do
    [files: ~w(src doc test rebar.config README.markdown),
     maintainers: ["Mahesh Paolini-Subramanya", "Michael Truog"],
     licenses: ["BSD"],
     links: %{"Website" => "https://cloudi.org",
              "GitHub" => "https://github.com/CloudI/" <>
                          "cloudi_service_db_cassandra"}]
   end
end
