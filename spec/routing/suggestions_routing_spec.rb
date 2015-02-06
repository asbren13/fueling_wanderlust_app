require 'rails_helper'

RSpec.describe 'routes for suggestions' do

  it 'routes GET /cities/:city_id/suggestions to the suggestions controller' do
    expect(get('/cities/1/suggestions')).to route_to('suggestions#index', city_id:"1")
  end

  it 'routes GET /cities/:city_id/suggestions/new to the suggestions controller' do
    expect(get('/cities/1/suggestions/new')).to route_to('suggestions#new', city_id: "1")
  end

  it 'routes POST /cities/:city_id/suggestions to the suggestions controller' do
    expect(post('/cities/1/suggestions')).to route_to('suggestions#create', city_id: "1")
  end

end
