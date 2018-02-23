# require 'capybara/rspec'
# require './app'
# Capybara.app = Sinatra::Application
# set(:show_exceptions, false)
#
# describe('word list', {:type => :feature}) do
#   it('display a list of words') do
#     visit('/')
#     fill_in('word', :with => 'hello')
#     click_button('Add word!')
#     expect(page).to have_content('hello')
#   end
# end
