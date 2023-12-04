class RemovePassengerCountInBookings < ActiveRecord::Migration[7.1]
  def change
    remove_column :bookings, :passenger_count
  end
end
