class Product
  include DataMapper::Resource

  property :id, Serial
  property :price, String
  property :name, String
  property :description, Text

  has n, :order
end