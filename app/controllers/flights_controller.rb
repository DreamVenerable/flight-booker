class FlightsController < ApplicationController

  def index
    @airport_options = Airport.all.map { |c| [c.airport_code] }
    @flight_date = Flight.all.map { |d| [d.trip_datetime.strftime("%Y/%m/%d")] }.uniq
    @flights = found_flights
  end

  private

  def found_flights
    unless params['datetime'].nil?

      Flight.joins(:dep_airport, :arr_airport)
      .where('dep_airport.airport_code' => params['dep_airport'],
             'arr_airport.airport_code' => params['arr_airport'],
             'trip_datetime' => params['datetime'].to_datetime.all_day)

    end
  end
end
