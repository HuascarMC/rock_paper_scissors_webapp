require('sinatra')
require('sinatra/contrib/all')
require_relative('models/rps.rb')

get '/' do
  erb(:home)
end

get '/:w/:c' do
  array = ["R", "P", "S"]
  rps = RPS.new(params[:w].to_s, array.sample)
  @result = rps.play()
  erb(:result)
end
