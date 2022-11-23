defmodule MaiCafeWeb.Router do
  use MaiCafeWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", MaiCafeWeb do
    pipe_through :api
  end
end
