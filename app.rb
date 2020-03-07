require 'sinatra/base'
require './lib/player'
require './lib/game'


class Battle < Sinatra::Base
  enable :sessions

  get '/' do
   erb(:index)
  end

  post '/names' do
    @player_1 = Player.new(params[:player1])
    @player_2 = Player.new(params[:player2])
    $game = Game.new(@player_1, @player_2)
    redirect '/play'
  end

  get '/play' do
    @current_game = $game
    erb(:play)
  end

  get '/attack' do
    @current_game = $game
    @current_game.attack(@current_game.defender)


    erb(:attack)
  end

  run! if app_file == $0
end
