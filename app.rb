require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/pirates' do
      @pirates = Pirate.all
      erb :'/pirates/index'
    end

    get '/pirates/:id' do
    end



    # code other routes/actions here

  end
end
