defmodule CloudIServiceDbPgsql do
  use Mix.Project

  def project do
    [app: :cloudi_service_db_pgsql,
     version: "1.5.3",
     language: :erlang,
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
       branch: "master"]},
     {:pgsql,
      [git: "https://github.com/semiocast/pgsql.git",
       branch: "master"]},
     {:cloudi_core, "~> 1.5.3"}]
  end

  defp description do
    "Erlang/Elixir Cloud Framework PostgreSQL Service"
  end

  defp package do
    [files: ~w(src doc test rebar.config README.markdown),
     maintainers: ["Michael Truog"],
     licenses: ["BSD"],
     links: %{"Website" => "http://cloudi.org",
              "GitHub" => "https://github.com/CloudI/" <>
                          "cloudi_service_db_pgsql"}]
   end
end
