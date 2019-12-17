defmodule AbsintheSubscriptionWeb.Resolvers.Content do
  @posts [
    %{
      id: "123",
      title: "first post",
      body: """
      Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis
      sollicitudin, neque ac ultrices consectetur, eros sem viverra diam, at
      aliquam nunc mauris non arcu. Ut et sem a justo molestie tristique. Nunc
      consectetur orci felis, lacinia congue sem accumsan tempus. Sed sit amet
      risus nec est convallis tempor. Aenean facilisis tristique lacus quis
      eleifend. Sed elementum bibendum lectus, vel tristique quam sollicitudin
      in. Praesent sed venenatis nisi, sit amet maximus mauris. Maecenas sit
      amet pretium nibh, a pharetra lorem. Mauris sagittis erat vel finibus
      porttitor. Fusce convallis suscipit dolor, vitae tristique elit. Phasellus
      nisl est, efficitur eu vestibulum nec, commodo in dolor. Donec ac risus
      leo. Quisque quam velit, sodales non sem in, ullamcorper semper tortor.
      Quisque dignissim lectus eu ligula dapibus, et hendrerit nisi ultrices.
      """
    }
  ]

  def list_posts(_parent, _args, _resolution) do
    {:ok, @posts}
  end
end
