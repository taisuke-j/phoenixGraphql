defmodule PhoenixGraphqlWeb.Resolvers.Content do
  def list_posts(_parent, _args, _resolution) do
    {:ok, PhoenixGraphql.Content.list_posts()}
  end
end
