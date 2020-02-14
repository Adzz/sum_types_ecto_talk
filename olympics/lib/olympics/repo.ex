defmodule Olympics.Repo do
  use Ecto.Repo,
    otp_app: :olympics,
    adapter: Ecto.Adapters.Postgres
end
