class Booking < ApplicationRecord
  belongs_to :user, class_name: "User", foreign_key: "user_id"
  belongs_to :instrument, class_name: "Instrument", foreign_key: "instrument_id"
  validates :user, presence: true
  validates :instrument, presence: true
end
