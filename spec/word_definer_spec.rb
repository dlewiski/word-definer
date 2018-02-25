require 'rspec'
require 'word_definer'
require 'pry'


describe('Word') do
  describe('#save_word') do
    it('saves a word to an array') do
      word1 = Word.new("happy")
      word1.save_word
      # changed this spec to work with first integration spec
      expect(Word.all).to(eq([word1, word1]))
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

  describe('#add_definition') do
    it('adds another definition to a word') do
      word1 = Word.new("happy")
      word1.add_definition("makes you feel good")
      word1.add_definition("a feeling")
      word1.save_word
      expect(word1.definitions()).to(eq(["makes you feel good", "a feeling"]))
    end
  end

  describe('.find') do
    it('finds a particular word using its id') do
      word1 = Word.new("happy")
      word1.add_definition("makes you feel good")
      word2 = Word.new("cat")
      word2.add_definition("furry creature that meows")
      word1.save_word
      word2.save_word
      expect(Word.find(1)).to(eq(word1))
    end
  end
end
