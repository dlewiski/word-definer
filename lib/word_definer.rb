class Word
  attr_accessor :title, :definition
  attr_reader :parts_of_speech

  def initialize(attributes)
    @title = attributes.fetch(:title)
    @definition = attributes.fetch(:definitions)
    @parts_of_speech = attributes.fetch(:parts_of_speech)
end
