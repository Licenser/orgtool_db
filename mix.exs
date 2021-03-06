defmodule OrgtoolDb.Mixfile do
  use Mix.Project

  def project do
    [app: :orgtool_db,
     version: "0.0.1",
     elixir: "~> 1.2",
     elixirc_paths: elixirc_paths(Mix.env),
     compilers: [:phoenix, :gettext] ++ Mix.compilers,
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     aliases: aliases(),
     deps: deps()]
  end

  # Configuration for the OTP application.
  #
  # Type `mix help compile.app` for more information.
  def application do
    [mod: {OrgtoolDb, []},
     applications: [:phoenix, :phoenix_pubsub, :phoenix_html, :phoenix_ecto,
                    :cowboy, :logger, :gettext, :postgrex, :httpotion, :sweet_xml,

                    :ueberauth,
                    :ueberauth_google, :ueberauth_identity, :ueberauth_twitter, :ueberauth_slack,
                    :ueberauth_facebook, :ueberauth_github, :ueberauth_discord, :ueberauth_microsoft,

                    :oauth2, :comeonin, :ja_serializer]]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "web", "test/support"]
  defp elixirc_paths(_),     do: ["lib", "web"]

  # Specifies your project dependencies.
  #
  # Type `mix help deps` for examples and options.
  defp deps do
    [{:phoenix, "~> 1.2.1"},
     {:phoenix_pubsub, "~> 1.0"},
     {:phoenix_ecto, "~> 3.0"},
     {:postgrex, ">= 0.0.0"},
     {:mariaex, ">= 0.0.0"},
     {:phoenix_html, "~> 2.6"},
     {:phoenix_live_reload, "~> 1.0", only: :dev},
     {:gettext, "~> 0.11"},
     {:cors_plug, "~> 1.2"},
     {:httpotion, "~> 3.0.2"},
     {:sweet_xml, "~> 0.6.5"},
     {:cowboy, "~> 1.0"},
     {:ja_serializer, "~> 0.12.0"},
     {:exrm, "~> 1.0"},

     {:comeonin, "~> 3.0"},

     {:guardian_db, "~> 0.7"},
     {:guardian, "~> 0.12.0"},

     {:oauth2, "~> 0.8", override: true},

     {:ueberauth, "~> 0.4"},
     {:ueberauth_identity, "~>0.2.3"},
     {:ueberauth_google, "~> 0.5"},
     {:ueberauth_twitter, "~> 0.2"},
     {:ueberauth_slack, "~> 0.4"},
     {:ueberauth_facebook, "~> 0.6"},
     {:ueberauth_github, "~> 0.4"},

     {:ueberauth_discord, "~> 0.3.0"},
     {:ueberauth_microsoft, "~> 0.2.0"},
    ]
  end

  # Aliases are shortcuts or tasks specific to the current project.
  # For example, to create, migrate and run the seeds file at once:
  #
  #     $ mix ecto.setup
  #
  # See the documentation for `Mix` for more info on aliases.
  defp aliases do
    ["ecto.setup": ["ecto.create", "ecto.migrate", "run priv/repo/seeds.exs"],
     "ecto.reset": ["ecto.drop", "ecto.setup"],
     "test": ["ecto.create --quiet", "ecto.migrate", "test"]]
  end
end
