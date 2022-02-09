class Product < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  validates :description, uniqueness: true, presence: true
end
