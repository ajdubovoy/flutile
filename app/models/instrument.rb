class Instrument < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, presence: true
  validates :location, presence: true
  mount_uploader :photo, PhotoUploader
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  # include PgSearch
  # pg_search_scope :search_by_name_and_location, lambda do |field, query|
  #   against: field,
  #   using: {
  #     tsearch: {prefix: true} # partial-text -> good
  #   }
end
