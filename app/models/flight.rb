class Flight < ApplicationRecord
  belongs_to :arr_airport,
             class_name: 'Airport',
             inverse_of: 'arr_flights'

  belongs_to :dep_airport,
             class_name: 'Airport',
             inverse_of: 'dep_flights'

  has_many :bookings
  has_many :passengers, through: :bookings
end
