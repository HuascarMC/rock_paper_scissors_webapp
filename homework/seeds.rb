require('sinatra')
require('sinatra/contrib/all')
require_relative('models/rps.rb')

get '/' do
  erb(:home)
end

get '/:p/:c' do
  rps = RPS.new(params[:p].to_s, params[:c].to_s)
  @game = rps.play()
  erb(:game)
end
