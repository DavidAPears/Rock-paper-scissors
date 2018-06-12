require('sinatra')
require('sinatra/contrib/all')

require_relative('./models/game.rb')
also_reload( './models/*' )

get '/'do
  erb(:home)
end

get '/rps_game/:player1/:player2' do
  game = Game.new( params[:player1], params[:player2] )
  @outcome = game.rps_game()
  erb( :outcome )
end
