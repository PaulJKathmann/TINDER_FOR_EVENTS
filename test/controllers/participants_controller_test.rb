require 'test_helper'

class ParticipantsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get participants_new_url
    assert_response :success
  end

  test "should get create" do
    get participants_create_url
    assert_response :success
  end

  test "should get edit" do
    get participants_edit_url
    assert_response :success
  end

  test "should get update" do
    get participants_update_url
    assert_response :success
  end

  test "should get show" do
    get participants_show_url
    assert_response :success
  end

end
