require 'rails_helper'

RSpec.feature 'Managing Comments' do
  scenario 'List all comments for a suggestion' do
    @city = City.create!(city_name:'Copenhagen', country_name:'Denmark')
    @suggestion = Suggestion.create!(name:'Ashlinn', ideas: "1) Go on a Nyhavn boat cruise. 2) eat one of their famous hotdogs!", city: @city)
    @suggestion.comments.create!(body:"The Nyhavn boat tour is awesome because you get a great uncrowded view of the little mermaid statue without tourists everywhere!")

    visit "/cities/#{@city.id}/suggestions/#{@suggestion.id}/comments"

    expect(page).to have_content 'Comments'
    expect(page).to have_selector 'li', count: 1
  end

  scenario 'Create a comment' do
    @city = City.create!(city_name:'Copenhagen', country_name:'Denmark')
    @suggestion = Suggestion.create!(name:'Ashlinn', ideas: "1) Go on a Nyhavn boat cruise. 2) eat one of their famous hotdogs!", city: @city)
    @comment = Comment.create!(body:"The Nyhavn boat tour is awesome because you get a great uncrowded view of the little mermaid statue without tourists everywhere!", suggestion: @suggestion)
    visit new_city_suggestion_comment_path(@city.id, @suggestion.id)

    fill_in 'Enter your comment here:', with: "The Nyhavn boat tour is awesome because you get a great uncrowded view of the little mermaid statue without tourists everywhere!"
    click_on 'Submit'

  end

 scenario 'List a comment for a suggestion' do
    @city = City.create!(city_name:'Copenhagen', country_name:'Denmark')
    @suggestion = Suggestion.create!(name:'Ashlinn', ideas: "1) Go on a Nyhavn boat cruise. 2) eat one of their famous hotdogs!", city: @city)
    @comment = Comment.create!(body:"The Nyhavn boat tour is awesome because you get a great uncrowded view of the little mermaid statue without tourists everywhere!", suggestion: @suggestion)

    visit "/cities/#{@city.id}/suggestions/#{@suggestion.id}/comments/#{@comment.id}"
  end

end
