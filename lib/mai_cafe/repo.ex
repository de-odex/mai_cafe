defmodule MaiCafe.Repo do
  use Ecto.Repo,
    otp_app: :mai_cafe,
    adapter: Ecto.Adapters.Postgres
end
