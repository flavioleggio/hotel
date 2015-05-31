class ReservationMailer < ApplicationMailer
  default :from => "corsorails2015@gmail.com"
  def booking_confirmation(user,reservation)
    @res = reservation
    mail(:to => user.email, :subject => "Booking Confirmation")
  end
end
