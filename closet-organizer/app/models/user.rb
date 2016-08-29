class User < ApplicationRecord
  has_secure_password
  has_many :items
  has_many :brands, through: :items
  has_many :outfits, through: :items

end
