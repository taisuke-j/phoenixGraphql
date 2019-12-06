defmodule PhoenixGraphql.Repo do
  use Ecto.Repo,
    otp_app: :phoenixGraphql,
    adapter: Ecto.Adapters.Postgres
end
