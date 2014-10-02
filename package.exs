defmodule CloudIServiceDbPgsql do
  use Mix.Project

  def project do
    [app: :cloudi_service_db_pgsql,
     version: "1.3.3",
     description: description,
     package: package,
     deps: deps]
  end

  defp deps do
    [{:epgsql,
      [git: "https://github.com/okeuday/epgsql_new.git",
       branch: "devel"]},
     {:epgsql_wg,
      [git: "https://github.com/okeuday/epgsql_wg.git",
       tag: "1.5.0"]},
     {:pgsql,
      [git: "https://github.com/semiocast/pgsql.git",
       branch: "master"]},
     {:cloudi_core, "~> 1.3.3"},
     {:cpg,
      [git: "https://github.com/okeuday/cpg.git",
       tag: "v1.3.3"]},
     {:uuid,
      [git: "https://github.com/okeuday/uuid.git",
       tag: "v1.3.3"]},
     {:reltool_util,
      [git: "https://github.com/okeuday/reltool_util.git",
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
    "Erlang/Elixir Cloud Framework PostgreSQL Service"
  end

  defp package do
    [files: ~w(src doc test rebar.config README.markdown),
     contributors: ["Michael Truog"],
     licenses: ["BSD"],
     links: %{"Website" => "http://cloudi.org",
              "GitHub" => "https://github.com/CloudI/" <>
                          "cloudi_service_db_pgsql"}]
   end
end
