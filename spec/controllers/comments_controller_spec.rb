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
    @suggestion.save
    @comments = @suggestion.comments
  end

  describe 'GET index' do
    it 'has a 200 status code' do
      get :index, city_id: @city.id, suggestion_id: @suggestion.id
      expect(response.status).to eq 200
    end

    it 'renders the index template' do
      get :index, city_id: @city.id, suggestion_id: @suggestion.id
      expect(response).to render_template('index')
    end

    it 'assigns @comments' do
      get :index, city_id: @city.id, suggestion_id: @suggestion.id
      expect(assigns(:comments)).to eq @comments
    end
  end

  describe 'GET new' do
    it 'has a 200 status code' do
      get :new, city_id: @city.id, suggestion_id: @suggestion.id
      expect(response.status).to eq 200
    end

    it 'renders the new template' do
      get :new, city_id: @city.id, suggestion_id: @suggestion.id
      expect(response).to render_template('new')
    end

    it 'assigns @comment' do
      get :new, city_id: @city.id, suggestion_id: @suggestion.id
      expect(assigns(:comment)).to be_a_new Comment
    end
  end

 describe 'POST create' do
   context 'with valid attributes' do
      it 'saves a new comment' do
        expect {
          post :create, city_id: @city.id, suggestion_id: @suggestion.id, comment: valid_attributes
        }.to change(Comment, :count).by 1
      end

    end
    context 'with invalid attributes' do
      it 'assigns @comment, but does not save a new comment' do
        post :create, city_id: @city.id, suggestion_id: @suggestion.id, comment: invalid_attributes
        expect(assigns(:comment)).to be_a_new Comment
      end

      it 're-renders the new template' do
        post :create, city_id: @city.id, suggestion_id: @suggestion.id, comment: invalid_attributes
        expect(response).to render_template 'new'
      end
    end
  end

  describe 'GET show' do
    it 'has a 200 status code' do
      comment = Comment.create!(valid_attributes)
      @suggestion.comments << comment
      get :show, city_id: @city.id, suggestion_id: @suggestion.id, id: comment
      expect(response.status).to eq 200
    end

    it 'renders the show template' do
      comment = Comment.create!(valid_attributes)
      @suggestion.comments << comment
      get :show, city_id: @city.id, suggestion_id: @suggestion.id, id: comment
      expect(response).to render_template('show')
    end

    it 'assigns @comment' do
      comment = Comment.create!(valid_attributes)
      @suggestion.comments << comment
      get :show, city_id: @city.id, suggestion_id: @suggestion.id, id: comment
      expect(assigns(:comment)).to eq comment
    end
  end
end
