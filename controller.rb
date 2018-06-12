require('sinatra')
require('sinatra/contrib/all')

require_relative('./models/game.rb')
also_reload( './models/*' )

get '/draw/:obj1/:obj2' do
  game = Game.new( params[:obj1], params[:obj2] )
  @outcome = game.draw()
  erb( :outcome )
end
