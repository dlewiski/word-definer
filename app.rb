require 'sinatra'
require 'sinatra/reloader'
require 'pry'
also_reload('lib/**/*.rb')
require './lib/word_definer'

get('/') do

  erb(:definition)
end

post('/') do

  erb(:definition)
end
