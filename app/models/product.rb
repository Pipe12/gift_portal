class Product < ApplicationRecord
  has_and_belongs_to_many :categories

  validates :name, :description, :cost, presence: true
  validates :description, length: { minimum: 10 }
end
