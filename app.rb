require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_1] = params[:player_1]
    session[:player_2] = params[:player_2]
    redirect '/play'
  end

  get '/play' do
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    erb :play
  end

  post '/player_1_HP' do
    Hitpoints.instance.player_1_HP
    erb :play
  end

  post '/player_2_HP' do
    Hitpoints.instance.player_2_HP
    erb :play
  end

  run! if app_file == $0
end

