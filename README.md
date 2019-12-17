# AbsintheSubscription

An example of creating GraphQL Subscriptions over WebSockets using Absinthe and
Phoenix Channels.

Uses a simple GenServer for storing state.

## Usage

Run the server using: `mix phx.server`

Open GraphiQL in your browser at [http://localhost:4000/graphiql](http://localhost:4000/graphiql)

### Query Posts

```graphql
{
  posts {
    id,
    title,
    body
  }
}
```

There should be one hardcoded by default.

### Create a Post

```graphql
mutation createPost {
  createPost(title: "another post", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sollicitudin, neque ac ultrices consectetur, eros sem viverra diam, at aliquam nunc mauris non arcu. Ut et sem a justo molestie tristique. Nunc consectetur orci felis, lacinia congue sem accumsan tempus. Sed sit amet risus nec est convallis tempor. Aenean facilisis tristique lacus quis eleifend. Sed elementum bibendum lectus, vel tristique quam sollicitudin in. Praesent sed venenatis nisi, sit amet maximus mauris. Maecenas sit amet pretium nibh, a pharetra lorem. Mauris sagittis erat vel finibus porttitor. Fusce convallis suscipit dolor, vitae tristique elit. Phasellus nisl est, efficitur eu vestibulum nec, commodo in dolor. Donec ac risus leo. Quisque quam velit, sodales non sem in, ullamcorper semper tortor. Quisque dignissim lectus eu ligula dapibus, et hendrerit nisi ultrices.") {
    id
  }
]
```

### Create a Subscription

Run this inside of GraphiQL

```graphql
subscription {
  postCreated {
    id,
    title,
    body
  }
}
```

Now in a separate window create more posts. Each time a post is created you will
see it in the subscription query.
