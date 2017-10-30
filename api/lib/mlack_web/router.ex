defmodule MlackWeb.Router do
  use MlackWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", MlackWeb do
    pipe_through :api
  end
end
