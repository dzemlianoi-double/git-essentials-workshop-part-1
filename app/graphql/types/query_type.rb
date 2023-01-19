module Types
  class QueryType < Types::Base::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :movies, [MovieType], null: false, description: "List of movies"
    field :movie, resolver: Resolvers::MovieResolver, description: "Movie"
    field :actors, [ActorType], null: false, description: "List of actors"
    
    def movies
      Movie.all
    end
  end
end
