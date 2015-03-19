class User_order
  include DataMapper::Resource

  property :id, Serial
  property :product, String
  property :amount, String


end