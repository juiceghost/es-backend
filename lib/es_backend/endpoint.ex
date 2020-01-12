defmodule Esbackend.Endpoint do
  use Plug.Builder

  plug Plug.Logger
  plug Plug.MethodOverride
  plug Plug.Head

  plug Esbackend.Router
end