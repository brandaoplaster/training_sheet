defmodule TrainingSheet.Repo do
  use Ecto.Repo,
    otp_app: :training_sheet,
    adapter: Ecto.Adapters.Postgres
end
