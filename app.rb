require 'sinatra/base'
require 'sinatra/reloader'

class MonsterBattle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Hello Riky!'
  end
  run! if app_file == $0
end

