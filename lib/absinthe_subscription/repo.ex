defmodule AbsintheSubscription.Repo do
  use Ecto.Repo,
    otp_app: :absinthe_subscription,
    adapter: Ecto.Adapters.Postgres
end
