require 'test_helper'

class SwipesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get swipes_new_url
    assert_response :success
  end

  test "should get create" do
    get swipes_create_url
    assert_response :success
  end

  test "should get edit" do
    get swipes_edit_url
    assert_response :success
  end

  test "should get update" do
    get swipes_update_url
    assert_response :success
  end

end
