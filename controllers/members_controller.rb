require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('../models/member')
require_relative('../models/gym_class')
also_reload('../models/*')


get '/average_joes/view_members' do
  @members = Member.all()
  erb(:"members/view_members")
end

get '/average_joes/new_member' do
  erb(:"members/new_member")
end

get '/average_joes/:id/edit' do
  @member = Member.find(params[:id])
  erb(:"members/edit")
end

get '/average_joes/:id' do
  @member = Member.find(params[:id])
  erb(:"members/show")
end

post '/average_joes/:id/delete' do
  @member = Member.find(params[:id])
  @member.delete()
  redirect to("/average_joes")
end

post '/average_joes/:id' do
  @member = Member.new(params)
  @member.update
  erb(:"members/updated")
end

post '/average_joes' do
  @member = Member.new(params)
  @member.save
  erb(:"members/created")
end
