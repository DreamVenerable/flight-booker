class RenamePasssengerInBookingPassengers < ActiveRecord::Migration[7.1]
  def change
    remove_column :booking_passengers, :passsenger_id
    add_reference :booking_passengers, :passenger, foreign_key: true
  end
end
