require 'sinatra/base'

class BattleshipsWeb < Sinatra::Base

  set :views, Proc.new { File.join(root, "..", "views") }

  get '/' do
    'Hello BattleshipsWeb!'
    erb :index
  end

  get '/register' do
    @visitor = params[:name]
    erb :register
  end

  get '/game' do
    erb :game
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
