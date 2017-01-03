require 'test_helper'

class FavoritePostsControllerTest < ActionController::TestCase
  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get destroy" do
    get :destroy
    assert_response :success
  end

  test "should get set_project" do
    get :set_project
    assert_response :success
  end

end
