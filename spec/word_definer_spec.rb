require 'rspec'
# require 'word_definer'
require 'test'
require 'pry'


# describe('Word') do
#   describe('#initialize') do
#     it('generates a word') do
#       new_word = Word.new({:title => "happy"})
#       expect(new_word.title).to(eq("happy"))
#     end
#   end
#   describe('#make_word') do
#     it('generates a list of words') do
#       new_word = Word.new({:title => "happy"})
#       expect(new_word.title).to(eq("happy"))
#     end
#   end
# end
describe('#make_word') do
  it('generates a word') do
    first_word = Word.new({:title => "happy"})
    Word.make_word = first_word
    # binding.pry
    expect(first_word.title).to(eq("happy"))
  end
  it('generates a list of words') do
    first_word = Word.new({:title => "happy"})
    Word.make_word = first_word
    second_word = Word.new({:title => "happy"})
    Word.make_word = second_word
    binding.pry
    expect(first_word.title).to(eq("happy"))
  end
end
