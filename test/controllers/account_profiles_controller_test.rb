require 'test_helper'

class AccountProfilesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get account_profiles_index_url
    assert_response :success
  end

  test "should get new" do
    get account_profiles_new_url
    assert_response :success
  end

  test "should get edit" do
    get account_profiles_edit_url
    assert_response :success
  end

end
