require 'sinatra/base'
require 'sinatra/reloader'

class MonsterBattle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/names' do
    @player1 = params[:player1]
    @player2 = params[:player2]
    erb :players
  end

  run! if app_file == $0
end

