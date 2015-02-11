require 'rails_helper'

RSpec.feature 'Managing Suggestions' do
  scenario 'List all suggestions for a city' do
    @city = City.create!(city_name: 'Copenhagen', country_name: 'Denmark')
    @suggestion = Suggestion.create!(
      name: 'Ashlinn',
      ideas: '1) Go on a Nyhavn boat cruise.
        2) eat one of their famous hotdogs!',
      city: @city
    )
    Suggestion.create!(
      name: 'Amanda',
      ideas: 'Check out the National Museum—right around the corner from DIS
        and Radhusplasen.There are some really interesting history exhibits
        that can add a lot to your understanding of Danish culture.
        The museum is free on Wednesdays,
        like many of the other museums in Copenhagen',
      city: @city)

    visit "/cities/#{@city.id}/suggestions"

    # expect(page).to have_content 'Suggestions'
    # expect(page).to have_selector 'li', count: 2
  end

  scenario 'Create a suggestion' do
    @city = City.create!(city_name: 'Copenhagen', country_name: 'Denmark')
    Suggestion.create!(
      name: 'Ashlinn',
      ideas: '1) Go on a Nyhavn boat cruise.
        2) eat one of their famous hotdogs!',
      city: @city
    )

    visit new_city_suggestion_path(@city.id)

    fill_in 'Name', with: 'Ashlinn'
    fill_in 'Ideas', with: '1) Go on a Nyhavn boat cruise.
      2) eat one of their famous hotdogs!'
    click_on 'Submit'
    expect(page).to have_content(/success/i)
  end
  scenario 'List a suggestion for a city' do
    @city = City.create!(city_name: 'Copenhagen', country_name: 'Denmark')
    @suggestion = Suggestion.create!(
      name: 'Ashlinn',
      ideas: '1) Go on a Nyhavn boat cruise.
      2) eat one of their famous hotdogs!',
      city: @city
    )
    visit "/cities/#{@city.id}/suggestions/#{@suggestion.id}"

    expect(page).to have_content 'Suggestion'
    expect(page).to have_selector 'h1', count: 1
  end
end
