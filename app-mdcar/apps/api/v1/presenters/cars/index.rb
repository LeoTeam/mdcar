require 'representative/json'

module ApiV1
  module Presenters
    module Cars
      class Index
        attr_reader :cars

        def initialize(cars)
          @cars = cars
        end

        def render
          Representative::Json.new do |r|
            r.list_of :cars, cars do
              r.element :id
              r.element :name
              r.element :seri
              r.element :description
              r.element :image_url
            end
          end.to_s
        end
      end
    end
  end
end
