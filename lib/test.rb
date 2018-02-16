class Word

  attr_accessor :title, :definition
  attr_reader :parts_of_speech

  def initialize(attributes)
    @title = attributes.fetch(:title)
    @word_list = { "happy" => ["makes you feel good"], "bubble" => ["round ball filled with air that floats"] }
  #   @definition = attributes.fetch(:definitions)
  #   @parts_of_speech = attributes.fetch(:parts_of_speech)
  end

  def word_definition(title)
    @word_list.fetch(title)
  end
end
