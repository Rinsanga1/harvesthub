defmodule Harvesthub.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      HarvesthubWeb.Telemetry,
      Harvesthub.Repo,
      {DNSCluster, query: Application.get_env(:harvesthub, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: Harvesthub.PubSub},
      # Start a worker by calling: Harvesthub.Worker.start_link(arg)
      # {Harvesthub.Worker, arg},
      # Start to serve requests, typically the last entry
      HarvesthubWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Harvesthub.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    HarvesthubWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
