require 'sinatra'
require 'sinatra/reloader'
require 'pry'
also_reload('lib/**/*.rb')
require './lib/word_definer'

get('/') do
  word1 = Word.new("happy")
  word2 = Word.new("cat")
  word3 = Word.new("dog")
  word1.save_word
  word2.save_word
  word3.save_word
  @words = Word.all()
  erb(:word_list)
end

post('/') do
  @first_words = Word.new
  word = params["word"]
  @first_words.add_word(word)
  erb(:word_list)
end
