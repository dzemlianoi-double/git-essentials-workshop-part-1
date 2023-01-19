module Resolvers
	class AddMovieResolver < BaseResolver
		type Types::MovieType, null: true

    argument :genre, String, required: true
    argument :name, String, required: true
    argument :released_at, GraphQL::Types::ISO8601DateTime, required: true
    argument :duration_in_seconds, Integer
    argument :featured, Boolean, required: true
    argument :rating, Float, required: true

    def resolve(name:, genre:, released_at:, duration_in_seconds: nil, featured:, rating:)
			Movie.create(
				name: name,
				genre: genre,
				released_at: released_at,
				duration_in_seconds: duration_in_seconds,
				featured: featured,
				rating: rating,
				producer: Producer.all.first,
				actors: [Actor.all.first]
			)
    end
	end
end
