class Instrument < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :user, presence: true
  validates :name, presence: true
end
