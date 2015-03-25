class Amount
  include DataMapper::Resource

  property :id, Serial
  property :amount, Integer
  property :user_id, String
  property :product_id, String
  property :order_id, String

  belongs_to :user
  belongs_to :product
  belongs_to :order

end