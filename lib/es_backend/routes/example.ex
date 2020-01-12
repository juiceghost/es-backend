defmodule EsBackend.Routes.Example do
  use Honeybee.Handler

  def hello_world(conn, _opts) do
    Plug.Conn.resp(conn, 200, "hello_world")
  end
end