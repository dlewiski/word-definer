class Word
  attr_accessor :word, :definitions
  attr_reader :id
  @@word_list = []

  def initialize (word)
    @word = word
    @definitions = []
    @id = @@word_list.length + 1
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

  def self.find (criteria)
    id = criteria
    @@word_list.each do |word|
      if id == word.id
        return word
      end
    end
  end
end
