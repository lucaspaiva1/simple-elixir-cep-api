use Mix.Config

# Configure your database
config :myApi, MyApi.Repo,
  username: System.get_env("DB_USERNAME"),
  password: System.get_env("DB_PASSWORD"),
  database: System.get_env("DB_DATABASE"),
  hostname: System.get_env("DB_HOSTNAME"),
  port: System.get_env("DB_PORT"),
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :myApi, MyApiWeb.Endpoint,
  http: [port: System.get_env("SERVER_PORT")],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
