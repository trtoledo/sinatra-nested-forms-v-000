
require './environment'
# require_relative 'app/models/pirate.rb'
# require_relative 'app/models/ship.rb'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :'/pirates/new'
    end

    post '/pirates' do
      @pirates = Pirate.new(params[:pirate])
      params[:pirate][:ships].each {|info| Ship.new(info)}
      @ships = Ship.all
      erb :'pirates/show'
    end
  end
end
