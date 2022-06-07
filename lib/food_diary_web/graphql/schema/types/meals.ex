defmodule FoodDiaryWeb.Graphql.Schema.Types.Meal do
  use Absinthe.Schema.Notation

  enum :category do
    value :food
    value :drink
    value :desert
  end

  object :meal do
    field :id, non_null(:id)
    field :description, non_null(:string)
    field :calories, non_null(:string)
    field :category, non_null(:category)
  end

  input_object :create_meal_input do
    field :user_id, non_null(:id)
    field :description, non_null(:string)
    field :calories, non_null(:string)
    field :category, non_null(:category)
  end
end
