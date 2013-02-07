require 'sinatra'
require 'rack/padlock'
class HiApp < Sinatra::Base
  
  configure :test, :development do
    use Rack::Padlock
  end
  
  get '/insecure' do
    "<img src='http://www.google.com/images/srpr/logo3w.png'/><p>Hello, World!</p>"
  end

  get '/secure' do
    "<img src='https://www.google.com/images/srpr/logo3w.png'/><p>Hello, World!</p>"
  end
  
  run! if app_file == $0
end