class Item < ApplicationRecord
  belongs_to :outfit, optional: true
  belongs_to :brand, optional: true
  belongs_to :user, optional: true

  # validates_presence_of :category, :color, :fabric


  accepts_nested_attributes_for :brand, reject_if: proc { |attributes| attributes['name'].blank? }


  def description
    "#{self.brand.name} #{self.color} #{self.category}"
  end


end
