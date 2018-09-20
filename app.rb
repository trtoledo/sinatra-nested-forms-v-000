require './environment'
require_relative 'app/models/pirate.rb'
require_relative 'app/models/ship.rb'

module FormsLab
  class App < Sinatra::Base
    # code other routes/actions here

    get '/' do
    erb :root
  end

  get '/new' do
    erb :new
  end

  post '/pirates' do
  @ship = Ship.new(params[:ship])

  params[:ship][:pirates].each do |details|
    Pirate.new(details)
  end
  @ships = Ship.all

    erb :show
  end
end
end
