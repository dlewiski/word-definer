require 'rspec'
# require 'word_definer'
require 'test'
require 'pry'


describe('Word') do
  # describe('#initialize') do
  #   it('generates a word') do
  #     new_word = Word.new({:title => "happy"})
  #     expect(new_word.title).to(eq("happy"))
  #   end
  #
  #   it('generates a list of words') do
  #     first_word = Word.new({:title => "happy"})
  #     second_word = Word.new({:title => "bubble"})
  #     third_word = Word.new({:title => "toy"})
  #     expect(first_word.title).to(eq("happy"))
  #     expect(second_word.title).to(eq("bubble"))
  #     expect(third_word.title).to(eq("toy"))
  #   end
  # end
  # describe('.add_word') do
  #   it('stores all words in an array') do
  #     first_word = Word.new({:title => "happy"})
  #     second_word = Word.new({:title => "bubble"})
  #     third_word = Word.new({:title => "toy"})
  #     binding.pry
  #     expect(Word.all).to(eq("happy"))
  #   end
  # end
  it('returns a definition from an array') do
    first_word = Word.new({:title => "happy"})
    expect(first_word.word_definition("happy")).to(eq(["makes you feel good"]))
  end

  it('adds another word to the list') do
    first_word = Word.new({:title => "sad"})
    expect(first_word.define("sad")).to(eq(["makes you feel bad"]))
  end
end
