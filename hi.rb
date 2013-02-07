require 'sinatra'
require 'rack/padlock'
class HiApp < Sinatra::Base
  
  enable :logging
  use Rack::Padlock

  get '/hi' do
    "<img src='http://www.sinatrarb.com/images/logo.png'/><p>Hello, World!</p>"
  end
  
  run! if app_file == $0
end