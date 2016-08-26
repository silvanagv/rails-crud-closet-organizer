class Brand < ApplicationRecord
  has_many :items
  has_many :brands, through: :items
end
