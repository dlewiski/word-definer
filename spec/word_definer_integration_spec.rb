require 'capybara/rspec'
require './app'
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('word list', {:type => :feature}) do
  it('display a list of words') do
    visit('/')
    fill_in('word', :with => 'happy')
    fill_in('definition', :with => 'makes you feel good')
    click_button('Add word!')
    expect(page).to have_content('happy')
  end
end

describe('definition', {:type => :feature}) do
  it('display definitions of a word') do
    visit('/')
    click_link('happy')
    expect(page).to have_content('makes you feel good')
  end
end
