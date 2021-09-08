defmodule TrainingSheet.Users.Create do
  alias TrainingSheet.{Repo, User}

  def call(params) do
    params
    |> User.changeset()
    |> Repo.insert()
  end
end
