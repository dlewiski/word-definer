class Word

@@word_list = []

  attr_accessor :word

  def initialize (word)
    @word = word
    @definitions = []
  #   @parts_of_speech = attributes.fetch(:parts_of_speech)
  end

  def show_word
    @word.fetch("title")
  end

  def define
    @word.fetch("definitions")
  end

  def add_word(title)
    @word["title"] = title
  end

  def add_definition(definition)
    @word["definitions"].push(definition)
  end
end
