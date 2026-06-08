defmodule HelloWeb.PageController do
  use HelloWeb, :controller

  def home(conn, _params) do
    # render(conn, :home)
    # send_resp(conn, 201, "")
    #
    conn
    |> put_flash(:error, "Какая ошибка!!!")
    |> render(:home)
  end
end
