defmodule FoodDiaryWeb.Graphql.Resolvers.UserResolvers do
  alias FoodDiary.Users

  def get(%{id: user_id}, _context) do
    Users.Get.call(user_id)
  end

  def create(%{input: params}, _context) do
    Users.Create.call(params)
  end

  def delete(%{id: user_id}, _context) do
    with {:ok, user} <- Users.Delete.call(user_id) do
      user
    end
  end
end
