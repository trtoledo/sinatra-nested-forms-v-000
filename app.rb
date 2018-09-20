require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/pirates' do
      @pirates = Pirate.all
      erb :'/pirates/index'
    end

    get '/pirates/new' do
      erb '/pirates/new'
    end

    get '/pirates/:id' do
      @pirate = Pirate.find(params[:id])
      erb :'/pirates/show'
    end







    # code other routes/actions here

  end
end
