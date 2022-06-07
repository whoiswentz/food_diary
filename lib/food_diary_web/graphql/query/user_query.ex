defmodule FoodDiaryWeb.Graphql.Schema.Query.UserQueries do
  use Absinthe.Schema.Notation

  alias Crudry.Middlewares.TranslateErrors
  alias FoodDiaryWeb.Graphql.Resolvers.UserResolvers

  object :user_queries do
    field :user, type: :user do
      arg :id, non_null(:id)

      resolve &UserResolvers.get/2
      middleware TranslateErrors
    end
  end
end
