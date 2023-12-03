class Flight < ApplicationRecord
  belongs_to :arr_airport,
             class_name: 'Airport',
             inverse_of: 'arr_flights'

  belongs_to :dep_airport,
             class_name: 'Airport',
             inverse_of: 'dep_flights'

end
