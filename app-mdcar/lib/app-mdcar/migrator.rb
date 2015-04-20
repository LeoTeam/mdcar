require_relative '../../config/environment'

module Mdcar
  class Migrator
    require 'sequel'
    def self.migrate!
      db = Sequel.connect(ENV['APP_MDCAR_DATABASE_URL'])

      db.create_table! :cars do
        Interger :id
        String :name
        Interger :seri
        String :description
      end
    end
  end
end
