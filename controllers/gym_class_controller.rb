require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('../models/member')
require_relative('../models/gym_class')
also_reload('../models/*')

get '/average_joes/gym_classes/view_classes' do
  @gym_class = GymClass.all()
  erb(:"gym_classes/view_classes")
end

get '/average_joes/gym_classes/new_class' do
  erb(:"gym_classes/new_class")
end

get '/average_joes/gym_classes/:id' do
  @gym_class = GymClass.find(params[:id])
  erb(:"")
end

post '/average_joes/gym_classes/completed' do
  @gym_class = GymClass.new(params)
  @gym_class.save()
  erb(:"gym_classes/completed")
end
