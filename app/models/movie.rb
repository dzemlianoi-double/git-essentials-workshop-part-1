class Movie
	class << self
		def all
			@records || [
        {
          id: 1,
          name: 'The Wolf of Wall Street',
          genre: 'Humor Noir',
          released_at: Time.zone.now - 6.years,
          duration_in_seconds: 1.55.hours,
          featured: true,
          rating: 4,
          producer: Producer.all.first,
          actors: Actor.all
        }
      ]
		end

    def create(name:, duration_in_seconds: nil, genre:, released_at:, featured:, rating:, producer:, actors:)
      @records ||= all

      record = { id: @records.last[:id] + 1, name: name, genre: genre, released_at: released_at, featured: featured, rating: rating, producer: producer, actors: actors }

      @records << record

      record
    end
	end
end
