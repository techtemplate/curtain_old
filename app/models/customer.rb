class Customer
  include Mongoid::Document

  field :name, type: String
  field :color, type: String

  validates :name, presence: true,  uniqueness: true
end
