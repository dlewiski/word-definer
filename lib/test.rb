# class Word
#   @@word_list = []
#
#   attr_accessor :title, :definition
#   attr_reader :parts_of_speech
#
#   def initialize(attributes)
#     @title = attributes.fetch(:title)
#   #   @definition = attributes.fetch(:definitions)
#   #   @parts_of_speech = attributes.fetch(:parts_of_speech)
#   end
#
#   def self.make_word=(title)
#     @@word_list = @@word_list.push(title)
#   end
#
#   def self.all()
#   end
# end
#
# # puts "enter a word"
# #
# # title = gets.chomp
# #
# # puts Word.make_word(title)
