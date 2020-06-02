require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('../models/member')
require_relative('../models/gym_class')
require_relative('../models/booking')
also_reload('../models/*')


get '/average_joes/bookings/:id/book_in' do
  @members = Member.all()
  @gym_class = GymClass.all()
  erb(:"bookings/book_in")
end

post '/average_joes/bookings/booked_class' do
  @booking = Booking.new(params)
  @booking.save()
  erb(:"bookings/booked_class")
end
