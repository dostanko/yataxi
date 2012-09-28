require 'rubygems'
require 'sinatra'

get '/api/:person/:action' do 
  file = File.open(settings.root + "/../responses/" + params[:person] + "/" + params[:action])
  response_text = ""
  file.each {|line|
    response_text << line
  }
  response_text
end

get '/available_users' do
   Dir.entries(settings.root + "/../responses" ).select {|entry| File.directory? File.join(settings.root + "/../responses" ,entry) and !(entry =='.' || entry == '..') }.join(",")
end
