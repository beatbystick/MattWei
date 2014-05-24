class Unit < ActiveRecord::Base
  validates :rent, presence: true
  validates :unit, presence: true
  validates :bedrooms, presence: true
  validates :bathrooms, presence: true
  validates :sqft, presence: true

  belongs_to :property
end
