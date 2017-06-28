class Category < ApplicationRecord
  validates :name, presence: true

  has_many :product_categorizations
  has_many :products, through: :product_categorizations
end
