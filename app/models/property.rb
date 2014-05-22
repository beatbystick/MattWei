class Property < ActiveRecord::Base
  searchkick

  belongs_to :user
  default_scope -> { order('created_at DESC') }
  validates :name, presence: true
  validates :address, presence: true
  validates :user_id, presence: true

  geocoded_by :address
  after_validation :geocode, :if => :address_changed?

end
