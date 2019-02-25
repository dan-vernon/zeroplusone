class AddIdsToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :hero_id, :string, foreign_key: true
    add_column :bookings, :zero_id, :string, foreign_key: true
  end
end
