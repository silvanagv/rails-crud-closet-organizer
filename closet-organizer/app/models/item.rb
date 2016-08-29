class Item < ApplicationRecord
  belongs_to :outfit, optional: true
  belongs_to :brand, optional: true
  belongs_to :user, optional: true

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  accepts_nested_attributes_for :brand, reject_if: proc { |attributes| attributes['name'].blank? }


  def description
    "#{self.brand.name} #{self.color} #{self.category}"
  end


end
