require 'test_helper'

class FadressesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get fadresses_index_url
    assert_response :success
  end

  test "should get new" do
    get fadresses_new_url
    assert_response :success
  end

  test "should get edit" do
    get fadresses_edit_url
    assert_response :success
  end

end
