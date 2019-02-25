class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.text :description
      t.date :date
      t.references :hero
      t.references :zero

      t.timestamps
    end
  end
end
