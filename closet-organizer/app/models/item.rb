class Item < ApplicationRecord
  belongs_to :outfit, optional: true
  belongs_to :brand, optional: true
  belongs_to :user, optional: true

  accepts_nested_attributes_for :brand

  accepts_nested_attributes_for :brand, reject_if: proc { |attributes| attributes['name'].blank? }




end
