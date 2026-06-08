defmodule HelloWeb.UserController do
  use HelloWeb, :controller

  def index(conn, _params) do
    send_resp(conn, 200, "user index connected")
  end
end
