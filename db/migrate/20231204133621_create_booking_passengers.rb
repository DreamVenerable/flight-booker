class CreateBookingPassengers < ActiveRecord::Migration[7.1]
  def change
    create_table :booking_passengers do |t|
      t.references :booking, foreign_key: true
      t.references :passsenger, foreign_key: true

      t.timestamps
    end
  end
end
