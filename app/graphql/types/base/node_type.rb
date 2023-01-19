module Types
  module Base 
    module NodeType
      include Types::Base::BaseInterface
      # Add the `id` field
      include GraphQL::Types::Relay::NodeBehaviors
    end
  end
end
