require 'rails_helper'

RSpec.describe SuggestionsController do
  let(:valid_attributes) {
    { ideas: "sucks" }
  }

  let(:invalid_attributes) {
    { ideas: nil }
  }

  before(:all) do
    @city = City.create!(city_name:'Copenhagen', country_name:'Denmark')
    @suggestions = @city.suggestions
  end

  describe 'GET index' do
    it 'has a 200 status code' do
      get :index, city_id: @city.id
      expect(response.status).to eq 200
    end

    it 'renders the index template' do
      get :index, city_id: @city.id
      expect(response).to render_template('index')
    end

    it 'assigns @cities' do
      get :index, city_id: @city.id
      expect(assigns(:suggestions)).to eq @suggestions
    end
  end

  describe 'GET new' do
    it 'has a 200 status code' do
      get :new, city_id: @city.id
      expect(response.status).to eq 200
    end

    it 'renders the new template' do
      get :new, city_id: @city.id
      expect(response).to render_template('new')
    end

    it 'assigns @suggestion' do
      get :new, city_id: @city.id
      expect(assigns(:suggestion)).to be_a_new Suggestion
    end
  end

  describe 'POST create' do
    context 'with valid attributes' do
      it 'saves a new suggestion' do
        expect {post :create, city_id: @city.id, suggestion: valid_attributes}.to change(Suggestion, :count).by 1
      end

      it 'redirects to the created suggestion' do
        post :create, city_id: @city.id, suggestion: valid_attributes
        expect(response).to redirect_to(@city.suggestions.last)
      end
    end
    context 'with invalid attributes' do
      it 'assigns @suggestion, but does not save a new suggestion' do
        post :create, city_id: @city.id, suggestion: invalid_attributes
        expect(assigns(:suggestion)).to be_a_new Suggestion
      end

      it 're-renders the new template' do
        post :create, city_id: @city.id, suggestion: invalid_attributes
        expect(response).to render_template 'new'
      end
    end
  end
end

