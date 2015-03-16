require 'dm-timestamps'

class Order
  include DataMapper::Resource

  property :id, Serial
  property :paid, Boolean
  property :delivery_info, String
  property :delivered, Boolean
  property :delivered_at, String
  property :created_at, DateTime
  property :due_at, DateTime

  belongs_to :user

  has n, :products
  has n, :statuses

end