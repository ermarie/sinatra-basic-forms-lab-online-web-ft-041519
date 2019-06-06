require_relative 'config/environment'

class App < Sinatra::Base

  get "/" do
    erb :index
  end

  get "/new" do
    erb :create_puppy
  end

  post "/new" do
    @puppy = Puppy.new(params[:name], params[:breed], params[:months_old])
    @name = @puppy.name
    @breed = @puppy.breed
    @months_old = @puppy.months_old
    erb :display_puppy
  end

  get "/puppy" do
    erb :display_puppy
  end

end
