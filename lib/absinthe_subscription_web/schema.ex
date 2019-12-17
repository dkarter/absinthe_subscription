defmodule AbsintheSubscriptionWeb.Schema do
  use Absinthe.Schema

  import_types AbsintheSubscriptionWeb.Schema.ContentTypes

  alias AbsintheSubscriptionWeb.Resolvers

  query do
    @desc "Get all posts"
    field :posts, list_of(:post) do
      resolve(&Resolvers.Content.list_posts/3)
    end
  end

  mutation do
    field :create_post, :post do
      arg :title, non_null(:string)
      arg :body, :string

      resolve(&Resolvers.Content.create_post/3)
    end
  end
end
