defmodule PhoenixGraphqlWeb.Router do
  use PhoenixGraphqlWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", PhoenixGraphqlWeb do
    pipe_through :browser

    get "/", PageController, :index
    # resources "/posts", PostController
  end

  scope "/api" do
    pipe_through :api

    forward "/graphiql", Absinthe.Plug.GraphiQL, schema: PhoenixGraphqlWeb.Schema
    forward "/", Absinthe.Plug, schema: PhoenixGraphqlWeb.Schema
  end

  # Other scopes may use custom stacks.
  # scope "/api", PhoenixGraphqlWeb do
  #   pipe_through :api
  # end
end
