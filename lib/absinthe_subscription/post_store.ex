defmodule AbsintheSubscription.PostStore do
  use GenServer

  @posts [
    %{
      id: Ecto.UUID.generate(),
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

  def start_link(_) do
    GenServer.start_link(__MODULE__, @posts, name: __MODULE__)
  end

  def init(posts), do: {:ok, posts}

  def handle_call(:get_posts, _from, posts) do
    {:reply, posts, posts}
  end

  def handle_cast({:insert_post, post}, posts) do
    post = Map.put(post, :id, Ecto.UUID.generate())
    {:noreply, [post] ++ posts}
  end

  # ===================================================
  def get_posts do
    GenServer.call(__MODULE__, :get_posts)
  end

  def insert_post(post) do
    GenServer.cast(__MODULE__, {:insert_post, post})
  end
end
