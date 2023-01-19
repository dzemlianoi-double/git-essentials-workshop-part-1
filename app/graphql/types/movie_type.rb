module Types
  class MovieType < Types::Base::BaseObject
    field :id, ID, null: false
    field :genre, String, null: false
    field :name, String, null: false
    field :released_at, GraphQL::Types::ISO8601DateTime, null: false
    field :duration, Integer, deprecation_reason: "Use deprecationInSeconds field"
    field :duration_in_seconds, Integer
    field :featured, Boolean, null: false
    field :rating, Float, null: false

    field :producer, ProducerType, null: false
    field :actors, [ActorType], null: false
  end
end
