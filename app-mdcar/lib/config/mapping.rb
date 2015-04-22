# collection :users do
#   entity     User
#   repository UserRepository
#
#   attribute :id,   Integer
#   attribute :name, String
# end

collection :cars do
  entity Car
  repository CarRepository

  attribute :id,          Integer
  attribute :name,        String
  attribute :seri,        Integer
  attribute :description, String
  attribute :image_url,   String
end