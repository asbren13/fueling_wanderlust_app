require 'rails_helper'

RSpec.describe 'routes for comments' do
  it 'routes GET /cities/:city_id/suggestions/
  :suggestion_id/comments to the comments controller' do
    expect(
      get('/cities/1/suggestions/1/comments')
    ).to route_to('comments#index', city_id: '1', suggestion_id: '1')
  end

  it 'routes GET /cities/:city_id/suggestions/
  :suggestion_id/comments/new to the comments controller' do
    expect(
      get('/cities/1/suggestions/1/comments/new')
    ).to route_to('comments#new', city_id: '1', suggestion_id: '1')
  end

  it 'routes POST /cities/:city_id/suggestions/
  :suggestion_id/comments to the comments controller' do
    expect(
      post('/cities/1/suggestions/1/comments')
    ).to route_to('comments#create', city_id:  '1', suggestion_id: '1')
  end
  it 'routes GET /cities/1/suggestions/
  1/comments/1 to the suggestions controller' do
    expect(get('/cities/1/suggestions/1/comments/1')).to route_to(
      controller: 'comments',
      action: 'show',
      id: '1',
      city_id: '1',
      suggestion_id: '1'
      )
  end
end
