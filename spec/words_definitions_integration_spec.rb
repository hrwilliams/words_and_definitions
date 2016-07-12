require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the add word path', {:type => :feature})do
  it('navigate to the word form') do
    visit('/')
    click_link('add-word')
    expect(page).to have_content('Word:')
  end

  it ("processes the user entry and confirms it was sucessfully added") do
    visit('/words/new')
    fill_in('word_string', :with => 'trill')
    click_button('Add Word')
    expect(page).to have_content('Success!')
  end
end

# describe('the add definition path', {:type => :feature}) do
#   it('processes the user definition entry and confirms it was successfully added') do
#     visit('/words/:id/definitions/new')
#     fill_in('definition_string', :with => 'true and real')
#     click_button('Add Definition')
#     expect(page).to have_content('Success')
#   end
# end
