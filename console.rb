require('sinatra')
require('sinatra/contrib/all')
require_relative('controllers/members_controller')
require_relative('controllers/gym_class_controller')
require_relative('controllers/bookings_controller')


get '/average_joes' do
  erb(:index)
end
