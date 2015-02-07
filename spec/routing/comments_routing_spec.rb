require 'rails_helper'

RSpec.describe 'routes for comments' do

  it 'routes GET /cities/:city_id/suggestions/:suggestion_id/comments to the comments controller' do
    expect(get('/cities/1/suggestions/1/comments')).to route_to('comments#index', city_id:"1", suggestion_id:"1")
  end

end
