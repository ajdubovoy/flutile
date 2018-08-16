class AddCoordinatesToInstruments < ActiveRecord::Migration[5.2]
  def change
    add_column :instruments, :latitude, :float
    add_column :instruments, :longitude, :float
  end
end
