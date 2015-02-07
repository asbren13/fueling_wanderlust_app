# require 'rails_helper'

# RSpec.feature 'Managing Comments' do
#   scenario 'List all comments for a suggestion' do
#     @city = City.create!(city_name:'Copenhagen', country_name:'Denmark')
#     @suggestion = Suggestion.create!(name:'Ashlinn', ideas: "1) Go on a Nyhavn boat cruise. 2) eat one of their famous hotdogs!", city: @city)
#     Comment.create!(body:"The Nyhavn boat tour is awesome because you get a great uncrowded view of the little mermaid statue without tourists everywhere!")

#     visit "/cities/#{@city.id}/suggestions/#{@suggestion.id}/comments"

#     expect(page).to have_content 'Comments'
#     expect(page).to have_selector 'li', count: 1
#   end




# end
