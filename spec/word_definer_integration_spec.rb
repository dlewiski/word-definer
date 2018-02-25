require 'capybara/rspec'
require './app'
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('word list', {:type => :feature}) do
  it('display a list of words') do
    visit('/')
    fill_in('word', :with => 'happy')
    click_button('Add word!')
    expect(page).to have_content('happy')
  end
end
