module Resolvers
	class MovieResolver < BaseResolver
		type Types::MovieType, null: true

    argument :id, ID, required: true

    def resolve(id:)
			movie = Movie.all.detect { |movie| movie[:id] == id.to_i }
			movie[:name] = context[:current_user]
			movie
    end
	end
end
