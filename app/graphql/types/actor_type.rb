module Types
  class ActorType < Types::Base::BaseObject
    field :first_name, String, null: false
    field :last_name, String, null: false
    field :full_name, String, null: false

    def full_name
      [object[:first_name], object[:last_name]].join(' ')
    end
  end
end
