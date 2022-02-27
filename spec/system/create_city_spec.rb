# spec/system/create_city_spec.rb

require 'rails_helper'

RSpec.describe 'Create action for City', type: :system do
  scenario 'when provided valid inputs' do
    visit new_city_path
    fill_in 'Name', with: 'Toronto'
    click_on 'Create City'
    visit cities_path
    expect(page).to have_content('Toronto')
  end

  scenario 'when provided blank inputs' do
    visit new_city_path
    fill_in 'Name', with: ''
    click_on 'Create City'
    expect(page).to have_content("Name can't be blank")
  end
end