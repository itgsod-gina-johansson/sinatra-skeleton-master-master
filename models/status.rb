class Status
  include DataMapper::Resource

  property :id, Serial
  property :name, String

  belongs_to :order
end