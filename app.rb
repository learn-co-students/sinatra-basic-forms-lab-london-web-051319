require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  get "/new" do
    erb :create_puppy
  end

  post "/puppy" do
    %w(name breed age).each do |var|
      instance_variable_set("@#{var}", params[var])
    end
    erb :display_puppy
  end

end
