use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
#
# You should document the content of this
# file or create a script for recreating it, since it's
# kept out of version control and might be hard to recover
# or recreate for your teammates (or you later on).
config :orgtool_db, OrgtoolDb.Endpoint,
  secret_key_base: System.get_env("SECRET_KEY_BASE")

# Configure your database
# config :orgtool_db, OrgtoolDb.Repo,
#   adapter: Ecto.Adapters.Postgres,
#   username: "postgres",
#   password: "postgres",
#   database: "orgtool_db_prod",
#   pool_size: 20

config :orgtool_db, OrgtoolDb.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "",
  database: "orgtool",
  hostname: "db",
  pool_size: 20
