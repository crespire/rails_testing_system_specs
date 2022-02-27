# spec/system/delete_city_spec.rb

require 'rails_helper'

RSpec.describe 'deleting a city', type: :system do
  scenario 'success' do
    nyc = City.create!(name: 'NYC')
    visit cities_path
    expect(page).to have_content('NYC')

    click_on 'Destroy'
    accept_alert
    expect(page).not_to have_content('NYC')
  end
end
