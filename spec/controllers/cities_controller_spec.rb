require 'rails_helper'

RSpec.describe CitiesController do
  let(:valid_attributes) {
    { city_name: 'Paris', country_name:'France', photo_url: nil}
  }

  let(:invalid_attributes) {
    { city_name: nil, country_name: nil, photo_url: nil }
  }

  describe 'GET index' do
    it 'has a 200 status code' do
      get :index
      expect(response.status).to eq 200
    end

    it 'renders the index template' do
      get :index
      expect(response).to render_template('index')
    end

    it 'assigns @cities' do
      cities = City.all
      get :index
      expect(assigns(:cities)).to eq cities
    end
  end

  describe 'GET show' do
    it 'has a 200 status code' do
      city = City.create!(valid_attributes)
      get :show, id: city
      expect(response.status).to eq 200
    end

    it 'renders the show template' do
      city = City.create!(valid_attributes)
      get :show, id: city
      expect(response).to render_template('show')
    end

    it 'assigns @city' do
      city = City.create!(valid_attributes)
      get :show, id: city
      expect(assigns(:city)).to eq city
    end
  end

  describe 'GET new' do
    it 'has a 200 status code' do
    get 'index'
      get :new
      expect(response.status).to eq 200
    end

    it 'renders the new template' do
      get :new
      expect(response).to render_template('new')
    end

    it 'assigns @city' do
      get :new
      expect(assigns(:city)).to be_a_new City
    end
  end

  describe 'POST create' do
    context 'with valid attributes' do
      it 'saves a new city' do
        expect {
          post :create, city: valid_attributes
        }.to change(City, :count).by 1
      end

      it 'assigns @city' do
        post :create, city: valid_attributes
        expect(assigns(:city)).to be_a City
        expect(assigns(:city)).to be_persisted
      end

      it 'redirects to the created city' do
        post :create, city: valid_attributes
        expect(response).to redirect_to(City.last)
      end
    end

    context 'with invalid attributes' do
      it 'assigns @city, but does not save a new article' do
        post :create, city: invalid_attributes
        expect(assigns(:city)).to be_a_new City
      end

      it 're-renders the new template' do
        post :create, city: invalid_attributes
        expect(response).to render_template 'new'
      end
    end
  end

  describe 'GET edit' do
    it 'has a 200 status code' do
      city = City.create!(valid_attributes)
      get :edit, id: city
      expect(response.status).to eq 200
    end

    it 'renders the edit template' do
      city = City.create!(valid_attributes)
      get :edit, id: city
      expect(response).to render_template('edit')
    end

    it 'assigns @city' do
      city = City.create!(valid_attributes)
      get :edit, id: city
      expect(assigns(:city)).to eq city
    end
  end

  describe 'PATCH update' do
    context 'with valid attributes' do
      let(:new_attributes) {
        { city_name: 'London', country_name: 'England' }
      }

      it 'updates the requested article' do
        city = City.create!(valid_attributes)
        patch :update, id: city, city: new_attributes
        city.reload
        expect(city.city_name).to eq new_attributes[:city_name]
      end

      it 'assigns @city' do
        city = City.create!(valid_attributes)
        patch :update, id: city, city: new_attributes
        expect(assigns(:city)).to eq city
      end

      it 'redirects to the city' do
        city = City.create!(valid_attributes)
        patch :update, id: city, city: new_attributes
        expect(response).to redirect_to city
      end
    end

    context 'with invalid attributes' do
      it 'assigns @city' do
        city = City.create!(valid_attributes)
        patch :update, id: city, city: invalid_attributes
        expect(assigns(:city)).to eq city
      end

      it 're-renders the edit template' do
        city = City.create!(valid_attributes)
        patch :update, id: city, city: invalid_attributes
        expect(response).to render_template('edit')
      end
    end
  end

  describe 'DELETE destroy' do
    it 'destroys the requested city' do
      city = City.create!(valid_attributes)
      expect {
        delete :destroy, id: city
      }.to change(City, :count).by(-1)
    end

    it 'redirects to the cities list' do
     city = City.create!(valid_attributes)
      delete :destroy, id: city
      expect(response).to redirect_to cities_url
    end
  end
end
