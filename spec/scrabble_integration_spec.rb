require('capybara/rspec')
require('./app')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('scrabble path',{:type =>:feature}) do
  it('it returns your scrabble score for a word') do
  visit('/')
  fill_in('scrabble', :with => 'a')
  click_button('Send')
  expect(page).to have_content('1')
  end
end
