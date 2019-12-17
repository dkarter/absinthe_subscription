defmodule AbsintheSubscriptionWeb.Router do
  use AbsintheSubscriptionWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]

    forward "/graphiql", Absinthe.Plug.GraphiQL, schema: AbsintheSubscriptionWeb.Schema

    forward "/", Absinthe.Plug, schema: AbsintheSubscriptionWeb.Schema
  end
end
