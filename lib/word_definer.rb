class Word
  attr_accessor :word, :definitions
  @@word_list = []

  def initialize (word)
    @word = word
    @definitions = []
  end

  def save_word
    @@word_list.push(self)
  end

  def self.all
    @@word_list
  end

  def add_definition (definition)
    @definitions.push(definition)
  end
end
