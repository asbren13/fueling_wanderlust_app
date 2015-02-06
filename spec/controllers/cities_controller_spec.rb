require 'rails_helper'

RSpec.describe CitiesController do

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

end
