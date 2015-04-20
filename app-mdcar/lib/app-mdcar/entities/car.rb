require 'lotus/entity'

class Car
  include Lotus::Entity
  attributes :name, :seri, :description
end