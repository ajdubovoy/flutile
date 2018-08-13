class CreateInstruments < ActiveRecord::Migration[5.2]
  def change
    create_table :instruments do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.integer :price
      t.string :location
      t.text :description
      t.string :photo

      t.timestamps
    end
  end
end
