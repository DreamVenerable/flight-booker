class CreateFlights < ActiveRecord::Migration[7.1]
  def change
    create_table :flights do |t|
      t.references :dep_airport, foreign_key: { to_table: :airports }
      t.references :arr_airport, foreign_key: { to_table: :airports }
      t.integer :duration
      t.datetime :trip_datetime

      t.timestamps
    end
  end
end
