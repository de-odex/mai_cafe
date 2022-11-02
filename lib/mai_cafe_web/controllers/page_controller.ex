defmodule MaiCafeWeb.PageController do
  use MaiCafeWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
