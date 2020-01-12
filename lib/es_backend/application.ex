defmodule EsBackend.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Starts a worker by calling: EsBackend.Worker.start_link(arg)
      # {EsBackend.Worker, arg}
      Plug.Cowboy.child_spec(scheme: :http, plug: MyApp.Endpoint, options: [port: 8080])
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: EsBackend.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
