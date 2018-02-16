require 'rspec'
require 'word_definer'
require 'pry'
# require 'test'

describe('Word') do
  describe('#initialize') do
    it('generates a word') do
      new_word = Word.new({:title => "happy"})
      expect(new_word.title).to(eq("happy"))
    end
  end
  describe('#make_word') do
    it('generates a list of words') do
      new_word = Word.new({:title => "happy"})
      expect(new_word.title).to(eq("happy"))
    end
  end

end
