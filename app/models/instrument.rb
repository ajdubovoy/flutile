class Instrument < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, presence: true
  mount_uploader :photo, PhotoUploader
end
