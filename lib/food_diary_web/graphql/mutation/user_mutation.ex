defmodule FoodDiaryWeb.Graphql.Schema.Mutation.UserMutations do
  use Absinthe.Schema.Notation

  alias Crudry.Middlewares.TranslateErrors
  alias FoodDiaryWeb.Graphql.Resolvers.UserResolvers

  object :user_mutations do
    field :create_user, type: :user do
      arg :input, non_null(:create_user_input)

      resolve &UserResolvers.create/2
      middleware TranslateErrors
    end

    field :delete_user, type: :user do
      arg :id, non_null(:id)

      resolve &UserResolvers.delete/2
      middleware TranslateErrors
    end
  end
end
