require './environment'

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
      # @str = params.to_s
      @pirate = Pirate.new(params[:pirate])
 
      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end
 
      @ship_1 = Ship.all[0]
      @ship_2 = Ship.all[1]
 
      erb :show
    end
  
  end
end
