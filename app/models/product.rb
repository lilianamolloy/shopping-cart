class Product < ApplicationRecord
  validates :uuid, presence: true, numericality: true
  validates :name, presence: true
  validates :price, presence: true, numericality: true
end