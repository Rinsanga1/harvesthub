defmodule Harvesthub.Repo do
  use Ecto.Repo,
    otp_app: :harvesthub,
    adapter: Ecto.Adapters.Postgres
end
