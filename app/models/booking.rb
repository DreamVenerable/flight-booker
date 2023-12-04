class Booking < ApplicationRecord
  belongs_to :flight
  has_many :booking_passengers
  has_many :passengers, through: :booking_passengers
end
