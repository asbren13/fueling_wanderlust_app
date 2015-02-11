require 'test_helper'
# WelcomeController Test
class WelcomeControllerTest < ActionController::TestCase
  test 'should get index' do
    get :index
    assert_response :success
  end
end
