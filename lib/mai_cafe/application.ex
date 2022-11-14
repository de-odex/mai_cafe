defmodule MaiCafe.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      MaiCafeWeb.Telemetry,
      # Start the Ecto repository
      MaiCafe.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: MaiCafe.PubSub},
      # Start the Endpoint (http/https)
      MaiCafeWeb.Endpoint
      # Start a worker by calling: MaiCafe.Worker.start_link(arg)
      # {MaiCafe.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: MaiCafe.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    MaiCafeWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
