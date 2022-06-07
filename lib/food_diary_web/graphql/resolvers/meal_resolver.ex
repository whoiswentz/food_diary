defmodule FoodDiaryWeb.Graphql.Resolvers.MealResolvers do
  alias FoodDiary.Meals
  alias FoodDiaryWeb.Endpoint
  alias Absinthe.Subscription

  def create(%{input: params}, _context) do
    with {:ok, meal} <- Meals.Create.call(params) do
      Subscription.publish(Endpoint, meal, new_meal: "new_meal_topic")
      {:ok, meal}
    end
  end
end
