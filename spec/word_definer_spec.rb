require 'rspec'
require 'word_definer'
require 'pry'


describe('Word') do
  describe('#save_word') do
    it('saves a word to an array') do
      word1 = Word.new("happy")
      word1.save_word
      expect(Word.all).to(eq([word1]))
    end
  end

  describe('#add_definition') do
    it('adds a definition to a word') do
      word1 = Word.new("happy")
      word1.add_definition("makes you feel good")
      word1.save_word
      expect(word1.definitions()).to(eq(["makes you feel good"]))
    end
  end

  # it('returns a definition from a word') do
  #   first_word = Word.new
  #   first_word.add_word("happy")
  #   first_word.add_definition("makes you feel good")
  #   expect(first_word.define).to(eq(["makes you feel good"]))
  # end
  #
  # it('adds another word to the list') do
  #   first_word = Word.new
  #   first_word.add_word("happy")
  #   second_word = Word.new
  #   second_word.add_word("sad")
  #   expect(first_word.show_word).to(eq("happy"))
  #   expect(second_word.show_word).to(eq("sad"))
  # end
  #
  # it('adds another definition to a word') do
  #   first_word = Word.new
  #   first_word.add_word("happy")
  #   first_word.add_definition("makes you feel good")
  #   first_word.add_definition("is a type of feeling")
  #   expect(first_word.define).to(eq(["makes you feel good", "is a type of feeling"]))
  # end
end
