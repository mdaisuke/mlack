# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :mlack,
  ecto_repos: [Mlack.Repo]

# Configures the endpoint
config :mlack, MlackWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ehiwa/hL83DAwwNE4FJLuX5aynR+8QPC32ZDBC2ZkNIANyeQH78HTPgGPOQMm2v6",
  render_errors: [view: MlackWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Mlack.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :guardian, Guardian,
  issuer: "Mlack",
  ttl: {30, :days},
  verify_issuer: true,
  serializer: Mlack.GuardianSerializer

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
