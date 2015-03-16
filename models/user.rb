class User
  include DataMapper::Resource

  property :id, Serial
  property :username, String
  property :password, BCryptHash
  property :first_name, Text
  property :last_name, Text
  property :adress, Text
  property :post_number, Text

  has n, :orders

end

