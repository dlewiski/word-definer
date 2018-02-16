class Word

  attr_accessor :word, :title, :definition

  def initialize
    @word_list = [{"title" => "happy", "definitions" => ["makes you feel good"]}, {"title" => "bubble", "definitions" => ["round ball filled with air that floats"]}]
    @word = {"title" => "", "definitions" => []}
    @list_of_definitions = Array.new
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
