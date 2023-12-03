# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Flight.destroy_all
Airport.destroy_all

airports = Airport.create!([
  { airport_code: 'MED' },
  { airport_code: 'NYC' },
  { airport_code: 'IST' },
  { airport_code: 'LAX' },
  { airport_code: 'HND' },
  { airport_code: 'CDG' },
  { airport_code: 'SFO' },
  { airport_code: 'DXB' },
  { airport_code: 'PEK' },
  { airport_code: 'MIA' },
  { airport_code: 'SYD' }
])

flights = Flight.create!([
  { dep_airport: airports[0], arr_airport: airports[1], trip_datetime: Time.now, duration: 16 },
  { dep_airport: airports[0], arr_airport: airports[2], trip_datetime: Time.now + 1.day, duration: 13 },
  { dep_airport: airports[0], arr_airport: airports[1], trip_datetime: Time.now, duration: 14 },
  { dep_airport: airports[0], arr_airport: airports[2], trip_datetime: Time.now + 1.day, duration: 12 },
  { dep_airport: airports[1], arr_airport: airports[2], trip_datetime: Time.now + 1.day, duration: 13 },
  { dep_airport: airports[1], arr_airport: airports[0], trip_datetime: Time.now + 2.days, duration: 10 },
  { dep_airport: airports[2], arr_airport: airports[1], trip_datetime: Time.now + 2.days, duration: 11 },
  { dep_airport: airports[3], arr_airport: airports[0], trip_datetime: Time.now + 3.days, duration: 18 },
  { dep_airport: airports[3], arr_airport: airports[2], trip_datetime: Time.now + 3.days, duration: 15 },
  { dep_airport: airports[4], arr_airport: airports[0], trip_datetime: Time.now + 4.days, duration: 12 },
  { dep_airport: airports[4], arr_airport: airports[2], trip_datetime: Time.now + 4.days, duration: 14 },
  { dep_airport: airports[5], arr_airport: airports[1], trip_datetime: Time.now + 5.days, duration: 17 },
  { dep_airport: airports[5], arr_airport: airports[0], trip_datetime: Time.now + 5.days, duration: 16 },
  { dep_airport: airports[6], arr_airport: airports[1], trip_datetime: Time.now + 6.days, duration: 15 },
  { dep_airport: airports[6], arr_airport: airports[2], trip_datetime: Time.now + 6.days, duration: 13 },
  { dep_airport: airports[7], arr_airport: airports[0], trip_datetime: Time.now + 7.days, duration: 14 },
  { dep_airport: airports[7], arr_airport: airports[2], trip_datetime: Time.now + 7.days, duration: 16 },
  { dep_airport: airports[8], arr_airport: airports[1], trip_datetime: Time.now + 8.days, duration: 12 },
  { dep_airport: airports[8], arr_airport: airports[0], trip_datetime: Time.now + 8.days, duration: 13 },
  { dep_airport: airports[9], arr_airport: airports[2], trip_datetime: Time.now + 9.days, duration: 15 },
  { dep_airport: airports[9], arr_airport: airports[0], trip_datetime: Time.now + 9.days, duration: 14 },
  { dep_airport: airports[10], arr_airport: airports[1], trip_datetime: Time.now + 10.days, duration: 16 },
  { dep_airport: airports[10], arr_airport: airports[2], trip_datetime: Time.now + 10.days, duration: 18 }
])
