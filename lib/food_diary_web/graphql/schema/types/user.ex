defmodule FoodDiaryWeb.Graphql.Schema.Types.User do
  use Absinthe.Schema.Notation

  object :user do
    field :id, non_null(:id)
    field :name, non_null(:string)
    field :email, non_null(:string)
    field :meals, non_null(list_of(:meal))
  end

  input_object :create_user_input do
    field :name, non_null(:string)
    field :email, non_null(:string)
  end
end
