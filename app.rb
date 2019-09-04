require 'sinatra/base'

# Battle inherits from Sinatra class
class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    'Testing infrastructure working!'
  end
  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME

  get '/enter-players' do
    erb(:index)
  end

  post '/names' do
    session[:Player1] = params[:Player1]
    session[:Player2] = params[:Player2]
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end
end
