defmodule Esbackend.Router do
  use Honeybee
  alias Esbackend.Routes

  match _, "/hello" do
    plug Routes.Example, action: :hello_world
  end

  match _, "*", do: plug :not_found
  def not_found(conn, _opts), do: Plug.Conn.resp(conn, 404, "")
end