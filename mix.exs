#-*-Mode:elixir;coding:utf-8;tab-width:2;c-basic-offset:2;indent-tabs-mode:()-*-
# ex: set ft=elixir fenc=utf-8 sts=2 ts=2 sw=2 et nomod:

defmodule CloudIServiceDbPgsql do
  use Mix.Project

  def project do
    [app: :cloudi_service_db_pgsql,
     version: "2.0.7",
     language: :erlang,
     erlc_options: [
       :deterministic,
       :debug_info,
       :warn_export_vars,
       :warn_unused_import,
       #:warn_missing_spec,
       :warnings_as_errors],
     description: description(),
     package: package(),
     deps: deps()]
  end

  def application do
    [applications: [
       :cloudi_core,
       :epgsql,
       :pgsql]]
  end

  defp deps do
    [{:epgsql, ">= 4.6.0"},
     {:pgsql, ">= 26.0.2"},
     {:cloudi_core, ">= 2.0.7"}]
  end

  defp description do
    "Erlang/Elixir Cloud Framework PostgreSQL Service"
  end

  defp package do
    [files: ~w(src doc test rebar.config README.markdown LICENSE),
     maintainers: ["Michael Truog"],
     licenses: ["MIT"],
     links: %{"Website" => "https://cloudi.org",
              "GitHub" => "https://github.com/CloudI/" <>
                          "cloudi_service_db_pgsql"}]
   end
end
