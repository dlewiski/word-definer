class Word
  attr_accessor :word, :definitions
  @@word_list = []

  def initialize (word)
    @word = word
    @definitions = []
  end

  def save_word (word)
    @@word_list.push(word)
  end

  def self.all
    @@word_list
  end

  def add_definition (definition)
    @definitions.push(definition)
  end


  # def define
  #   @word.fetch("definitions")
  # end
  #
  # def add_word(title)
  #   @word["title"] = title
  # end
  #
  # def add_definition(definition)
  #   @word["definitions"].push(definition)
  # end
end
