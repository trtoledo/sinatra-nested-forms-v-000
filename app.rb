require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/pirates' do
      @pirates = Pirate.all
      erb :'/pirates/index'
    end

    get '/pirates/:id' do
      @pirate = Pirate.find(params[:id])
      erb :'/pirates/index'
    end



    # code other routes/actions here

  end
end
