require 'sinatra'
require 'sinatra/reloader'
require 'pry'
also_reload('lib/**/*.rb')
require './lib/word_definer'

get('/') do
  @words = Word.all()
  erb(:word_list)
end

post('/') do
  new_word = Word.new(params["word"])
  new_word.add_definition(params["definition"])
  new_word.save_word
  @words = Word.all()
  erb(:word_list)
end
