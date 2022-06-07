defmodule FoodDiaryWeb.Graphql.Schema.Mutation.MealMutations do
  use Absinthe.Schema.Notation

  alias Crudry.Middlewares.TranslateErrors
  alias FoodDiaryWeb.Graphql.Resolvers.MealResolvers

  object :meal_mutations do
    field :create_meal, type: :meal do
      arg :input, non_null(:create_meal_input)

      resolve &MealResolvers.create/2
      middleware TranslateErrors
    end
  end
end
