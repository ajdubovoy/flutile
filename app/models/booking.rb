class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :instrument
  validates :user, presence: true
  validates :instrument, presence: true
end
