class Word
  attr_accessor :title
  # attr_reader :parts_of_speech

  def initialize(attributes)
    @title = attributes.fetch(:title)
    # @definitions = attributes.fetch(:definitions)
    # @parts_of_speech = attributes.fetch(:parts_of_speech)
  end

  def self.make_word

  end
end

class Definition

end
