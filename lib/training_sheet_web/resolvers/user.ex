defmodule TrainingSheetWeb.Resolvers.User do
  alias TrainingSheet.Users

  def get(%{id: user_id}, _context) do
    user_id
    |> Users.Get.call()
  end

  def create(%{input: params}, _context) do
    params
    |> Users.Create.call()
  end
end
