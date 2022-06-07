defmodule FoodDiaryWeb.Graphql.Schema.Types.Root do
  use Absinthe.Schema.Notation

  import_types FoodDiaryWeb.Graphql.Schema.Types.{
    User,
    Meal
  }

  import_types FoodDiaryWeb.Graphql.Schema.Query.{
    UserQueries
  }

  import_types FoodDiaryWeb.Graphql.Schema.Mutation.{
    UserMutations,
    MealMutations
  }

  import_types FoodDiaryWeb.Graphql.Schema.Subscription.{
    MealsSubscription
  }

  object :root_query do
    import_fields :user_queries
  end

  object :root_mutation do
    import_fields :user_mutations
    import_fields :meal_mutations
  end

  object :root_subscription do
    import_fields :meal_subscriptions
  end
end
