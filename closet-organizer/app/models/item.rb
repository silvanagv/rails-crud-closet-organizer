class Item < ApplicationRecord
  belongs_to :outfit, optional: true
  belongs_to :brand, optional: true
end
