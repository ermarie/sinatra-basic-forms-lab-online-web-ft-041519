require_relative 'config/environment'

class App < Sinatra::Base

  get "/create_puppy" do
    erb :create_puppy
  end

  post "/create_puppy" do
    
  end

  get "/display_puppy" do
    erb :display_puppy
  end
end
