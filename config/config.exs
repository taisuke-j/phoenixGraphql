# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phoenixGraphql,
  ecto_repos: [PhoenixGraphql.Repo]

# Configures the endpoint
config :phoenixGraphql, PhoenixGraphqlWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "NQ+x9naONqiFn+WisDn4oh5MDIk8ivsYo5Dp2BR7RHL/IrGCXRR/paLQX5WNoxqi",
  render_errors: [view: PhoenixGraphqlWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhoenixGraphql.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
