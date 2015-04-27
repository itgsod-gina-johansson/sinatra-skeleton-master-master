class Product
  include DataMapper::Resource

  property :id, Serial
  property :price, String
  property :name, String
  property :description, Text
  property :ingredients, Text
  property :image, 


  has n, :line_items
  has n, :products, through: :line_items

end