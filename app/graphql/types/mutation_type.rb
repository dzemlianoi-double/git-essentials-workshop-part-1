module Types
  class MutationType < Types::Base::BaseObject
    field :add_movie, resolver: Resolvers::AddMovieResolver

    def add_movie
      "Hello World"
    end
  end
end
