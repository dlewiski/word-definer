class Word

  @@words = []
  attr_accessor :title
  # attr_reader :parts_of_speech

  def initialize(attributes)
    @@words << self
    @title = attributes.fetch(:title)

    # @definitions = attributes.fetch(:definitions)
    # @parts_of_speech = attributes.fetch(:parts_of_speech)
  end

  def self.all
    @@words.inspect
  end

  def self.show_word
    @@word[1].title
  end
end
