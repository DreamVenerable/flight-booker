class ReplaceColumnInBookingTable < ActiveRecord::Migration[7.1]
  def change
    remove_column :bookings, :passengers
    add_column  :bookings, :passenger_count, :integer

    add_reference :bookings, :flight, foreign_key: true
    add_reference :bookings, :passenger, foreign_key: true
  end
end
