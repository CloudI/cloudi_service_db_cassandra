defmodule CloudIServiceDbCassandra do
  use Mix.Project

  def project do
    [app: :cloudi_service_db_cassandra,
     version: "1.3.3",
     description: description,
     package: package,
     deps: deps]
  end

  defp deps do
    [{:erlang_cassandra,
      [git: "https://github.com/dieswaytoofast/erlang_cassandra.git",
       ref: "master"]},
     {:proper,
      [git: "https://github.com/manopapad/proper.git",
       ref: "master"]},
     {:reltool_util,
      [git: "https://github.com/okeuday/reltool_util.git",
       tag: "v1.3.3"]},
     {:cloudi_core, "~> 1.3.3"},
     {:cpg,
      [git: "https://github.com/okeuday/cpg.git",
       tag: "v1.3.3"]},
     {:uuid,
      [git: "https://github.com/okeuday/uuid.git",
       tag: "v1.3.3"]},
     {:trie,
      [git: "https://github.com/okeuday/trie.git",
       tag: "v1.3.3"]},
     {:quickrand,
      [git: "https://github.com/okeuday/quickrand.git",
       tag: "v1.3.3"]},
     {:nodefinder,
      [git: "https://github.com/okeuday/nodefinder.git",
       tag: "v1.3.2"]},
     {:dynamic_compile,
      [git: "https://github.com/okeuday/dynamic_compile.git",
       tag: "v1.3.3"]},
     {:syslog,
      [git: "https://github.com/okeuday/erlang-syslog.git",
       tag: "1.0.3"]}]
  end

  defp description do
    "Erlang/Elixir Cloud Framework Cassandra Service"
  end

  defp package do
    [files: ~w(src doc test rebar.config README.markdown),
     contributors: ["Mahesh Paolini-Subramanya", "Michael Truog"],
     licenses: ["BSD"],
     links: %{"Website" => "http://cloudi.org",
              "GitHub" => "https://github.com/CloudI/" <>
                          "cloudi_service_db_cassandra"}]
   end
end
