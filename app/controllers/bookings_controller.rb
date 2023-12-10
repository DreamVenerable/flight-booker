class BookingsController < ApplicationController
  before_action :validate_passenger_count

  def new
    @flight = Flight.find(params[:flight_id])
    @booking = Booking.new
    @passenger_count = validate_passenger_count

    @passenger_count.times do
      @booking.passengers.build
    end
  end

  def create
    @flight = Flight.find(params[:flight_id])
    @booking = @flight.bookings.build(booking_params)

    if @booking.save
      PassengerMailer.booking_email(@booking).deliver_now
      redirect_to flight_booking_path(id: @booking.id), notice: 'Booking was successfully created.'
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def validate_passenger_count
    max, min = 4, 1

    @passenger_count = params[:passenger_count].to_i
    @passenger_count = [min, [@passenger_count, max].min].max
  end

  def booking_params
    params.require(:booking).permit(:flight_id, :passenger_count, passengers_attributes: [:name, :email])
  end
end
