require 'sinatra/base'
require 'sinatra/reloader'


class Application < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Hello World!'
  end

  get '/hello' do
    name = params[:name]
    return "Hello #{name}"
  end

  post '/submit' do
    name = params[:name] 
    message = params[:message]
    return "Thanks #{name}, you sent this message: #{message}"
  end
end