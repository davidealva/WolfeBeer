require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get who_loves_wolfe" do
    get :who_loves_wolfe
    assert_response :success
  end

end
