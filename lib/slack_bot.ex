defmodule SlackBot do
  def init(default_opts) do
    IO.puts "starting SlackBot..."
    default_opts
  end

  def call(conn, _opts) do
    route(conn.method, conn.path_info, conn)
  end

  def route("GET", ["thebeef"], conn) do
    conn |> Plug.Conn.send_resp(200, "The Beef!")
  end
end
