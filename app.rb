require_relative 'config/environment'

class App < Sinatra::Base

   get '/' do
      erb :index
   end

   get '/new' do
      erb :create_puppy
   end
   
   post "/puppy" do
      @input = params
      @new_puppy = Puppy.new(name: @input[:name], breed: @input[:breed], months_old: @input[:age])
      erb :display_puppy
   end
   # binding.pry
      


end
