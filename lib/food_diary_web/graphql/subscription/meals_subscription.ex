defmodule FoodDiaryWeb.Graphql.Schema.Subscription.MealsSubscription do
  use Absinthe.Schema.Notation

  object :meal_subscriptions do
    field :new_meal, :meal do
      config fn _args, _info ->
        {:ok, "new_meal_topic"}
      end
    end
  end
end
