class AddConversationToBookings < ActiveRecord::Migration[5.2]
  def change
    add_reference :bookings, :conversation, foreign_key: true
  end
end
