require 'rails_helper'

RSpec.feature 'Managing Cities' do
  scenario 'List all cities' do
    City.destroy_all
    City.create!(city_name:'Copenhagen', country_name:'Denmark')
    visit '/cities'

    expect(page).to have_content 'Cities'
    expect(page).to have_selector 'li', count: 1
  end

  scenario 'See a citys suggestions' do
    city = City.create!(city_name:'Copenhagen', country_name: 'Denmark')
    visit "/cities/#{city.id}"
  end

#Only I can be able to do this.
#However, I want to make sure that it works.
  scenario 'Create a city' do

    visit '/cities/new'

    fill_in 'City name', with: 'London'
    fill_in 'Country name', with: 'England'
    click_on 'Create City'

    expect(page).to have_content('successfully')
  end


end
