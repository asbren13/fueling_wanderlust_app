require 'rails_helper'

RSpec.describe CommentsController do
  let(:valid_attributes) {
    { body: "sucks" }
  }

  let(:invalid_attributes) {
    { body: nil }
  }

  before(:all) do
    @city = City.create!(city_name:'Copenhagen', country_name:'Denmark')
    @suggestion = @city.suggestions.create!(ideas:"sucks")
    @comments = @suggestion.comments
  end

  describe 'GET index' do
    it 'has a 200 status code' do
      get :index, {city_id: @city.id, suggestion_id: @suggestion.id}
      expect(response.status).to eq 200
    end

    # it 'renders the index template' do
    #   get :index, {city_id: @city.id, suggestion_id: @suggestion.id}
    #   expect(response).to render_template('index')
    # end

    # it 'assigns @comments' do
    #   get :index, {city_id: @city.id, suggestion_id: @suggestion.id}
    #   expect(assigns(:comments)).to eq @comments
    # end
  end
end
