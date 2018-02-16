class Word

  attr_accessor :title, :definition
  attr_reader :parts_of_speech

  def initialize(attributes)
    @title = attributes.fetch(:title)
    @word_list = { "happy" => ["makes you feel good"], "bubble" => ["round ball filled with air that floats"] }
    # @definition = attributes.fetch(:definitions)
    @list_of_definitions = []
  #   @parts_of_speech = attributes.fetch(:parts_of_speech)
  end

  def define(title)
    @word_list.fetch(title)
  end

  def add_word
    @word_list[@title] = @list_of_definitions
  end
end
