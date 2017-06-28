class Product < ApplicationRecord
  validates :title, presence: true
  validates :tagline, presence: true

  has_many :product_categorizations
  has_many :categories, through: :product_categorizations
end
