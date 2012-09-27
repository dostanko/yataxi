require 'rubygems'
require 'sinatra'

get '/api/:action' do 
  action = params[:action]
  file = File.open(settings.root + "/../responses/" + action)
  response_text = ""
  file.each {|line|
    response_text << line
  }
  response_text
end
