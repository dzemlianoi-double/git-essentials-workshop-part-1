class Producer
	class << self
		def all
			@records || [
        {
          id: 1,
          first_name: 'Martin',
          last_name: 'Scorsese'
        }
      ]
		end

    def create(first_name:, last_name:)
      @records ||= all

      record = { id: all.last.id + 1, first_name: first_name, last_name: last_name }

      @records << record

      record
    end
	end
end
