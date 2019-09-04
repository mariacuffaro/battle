require 'sinatra/base'


class Battle < Sinatra::Base
  get '/' do
    "Testing infrastructure working!"
  end
  # start the server if ruby file executed directly
  run! if app_file == $0

  get '/enter-players' do
    erb(:index)
  end

  post '/names' do
    erb(:play)
  end
end
