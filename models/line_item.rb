class LineItem
  include DataMapper::Resource

  property :order_id, Serial
  property :price, String
  property :amount, String
  property :product, String

  belongs_to :order
end