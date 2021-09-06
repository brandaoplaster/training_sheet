defmodule TrainingSheet.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      TrainingSheet.Repo,
      # Start the Telemetry supervisor
      TrainingSheetWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: TrainingSheet.PubSub},
      # Start the Endpoint (http/https)
      TrainingSheetWeb.Endpoint
      # Start a worker by calling: TrainingSheet.Worker.start_link(arg)
      # {TrainingSheet.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: TrainingSheet.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    TrainingSheetWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
