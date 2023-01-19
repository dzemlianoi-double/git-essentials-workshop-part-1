class Actor
	class << self
		def all
			@records || [
        {
          id: 1,
          first_name: 'Leonardo',
          last_name: 'Decouplio'
        },
        {
          id: 2,
          first_name: 'Margo',
          last_name: 'Roby'
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
