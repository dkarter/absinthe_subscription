use Mix.Config

# Configure your database
config :absinthe_subscription, AbsintheSubscription.Repo,
  username: "postgres",
  password: "postgres",
  database: "absinthe_subscription_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :absinthe_subscription, AbsintheSubscriptionWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
