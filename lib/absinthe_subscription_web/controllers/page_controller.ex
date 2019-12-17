defmodule AbsintheSubscriptionWeb.PageController do
  use AbsintheSubscriptionWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
