require 'sinatra/base'
require_relative 'game'
require_relative 'board'
require_relative 'cell'
require_relative 'player'
require_relative 'ship'
require_relative 'water'

class BattleshipsWeb < Sinatra::Base

  set :views, Proc.new { File.join(root, "..", "views") }

  get '/' do
    'Hello BattleshipsWeb!'
    erb :index
  end

  get '/game' do
    @visitor = params[:name]
    erb :register
  end

  get '/game/new' do
    "Hello World"
    # $GAME = Game.new Player.new('katya'), Player.new('siv')
    # erb :game
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
