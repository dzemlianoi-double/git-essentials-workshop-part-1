module Resolvers
  class BaseResolver < GraphQL::Schema::Resolver
    # if you have a custom argument class, you can attach it:
    argument_class Types::Base::BaseArgument
  end
end
