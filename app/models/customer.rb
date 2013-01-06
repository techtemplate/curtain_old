class Customer
  include MongoMapper::Document

  key :name, String, :required => true, :unique => true
  key :color, String
end
