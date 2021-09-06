# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :training_sheet,
  ecto_repos: [TrainingSheet.Repo]

# Configures the endpoint
config :training_sheet, TrainingSheetWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "fd1CzpwZFrsYVgtpqLw5nvKwpgR/dVwgrY56XitkXxPyTuer0AKW5pgQBb0GjF6y",
  render_errors: [view: TrainingSheetWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: TrainingSheet.PubSub,
  live_view: [signing_salt: "9t+MVsuP"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
