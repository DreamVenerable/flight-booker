class PassengerMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def booking_email(booking)
    @booking = booking
    @email = @booking.passengers.first.email
    @flight = @booking.flight

    mail(to: @email, subject: 'Confirmation Email')
  end
end
