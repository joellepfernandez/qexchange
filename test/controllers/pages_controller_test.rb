require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get categories" do
    get :categories
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get feedback" do
    get :feedback
    assert_response :success
  end

  test "should get free_stuff" do
    get :free_stuff
    assert_response :success
  end

  test "should get furniture" do
    get :furniture
    assert_response :success
  end

  test "should get help" do
    get :help
    assert_response :success
  end

  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get privacy_policy" do
    get :privacy_policy
    assert_response :success
  end

  test "should get safety" do
    get :safety
    assert_response :success
  end

  test "should get services" do
    get :services
    assert_response :success
  end

  test "should get terms_of_use" do
    get :terms_of_use
    assert_response :success
  end

  test "should get meet_ups" do
    get :meet_ups
    assert_response :success
  end

  test "should get jobs" do
    get :jobs
    assert_response :success
  end

  test "should get housing" do
    get :housing
    assert_response :success
  end

end
