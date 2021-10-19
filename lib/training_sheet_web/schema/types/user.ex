defmodule TrainingSheetWeb.Schema.Types.User do
  use Absinthe.Schema.Notation

  import_types TrainingSheetWeb.Schema.Types.Custom.UUID4

  @desc "Logic user representation"
  object :user do
    field :id, non_null(:uuid4)
    field :name, non_null(:string)
    field :email, non_null(:string)
  end

  input_object :create_user do
    field :name, non_null(:string)
    field :email, non_null(:string)
    field :password, non_null(:string)
  end
end
