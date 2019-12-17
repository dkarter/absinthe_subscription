defmodule AbsintheSubscriptionWeb.Resolvers.Content do
  alias AbsintheSubscription.PostStore

  def list_posts(_parent, _args, _resolution) do
    {:ok, PostStore.get_posts()}
  end

  def create_post(_parent, args, _resolution) do
    PostStore.insert_post(args)
    {:ok, args}
  end
end
