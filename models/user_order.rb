class UserOrder
  include DataMapper::Resource

  property :id, Serial
  property :product, String
  property :amount, String
  property :cost, String

end