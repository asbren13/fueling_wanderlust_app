require 'rails_helper'

RSpec.describe 'routes for cities' do

  it 'routes GET /cities to the cities controller' do
    expect(get('/cities')).to route_to('cities#index')
  end

  it 'routes GET /cities/1 to the cities controller' do
    expect(get('/cities/1')).to route_to(
      controller: 'cities',
      action: 'show',
      id: '1'
      )
  end

  it 'routes GET /cities/new to the cities controller' do
    expect(get('/cities/new')).to route_to('cities#new')
  end

  it 'routes POST /cities to the cities controller' do
    expect(post('/cities')).to route_to('cities#create')
  end

end
