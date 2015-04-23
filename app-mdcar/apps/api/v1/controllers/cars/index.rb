module ApiV1
  module Controllers
    module Cars
      ##
      # Return all cars
      #
      # GET /api/v1/cars
      #
      # example:
      #
      #   curl -i -H "Accept: application/json" http://0.0.0.0:2300/api/v1/cars
      #
      #   status
      #   => 200
      #
      class Index
        include ApiV1::Action
        accept :json

        def call(params)
          cars = CarRepository.all
          self.body = ApiV1::Presenters::Cars::Index.new(cars).render
        end
      end
    end
  end
end
