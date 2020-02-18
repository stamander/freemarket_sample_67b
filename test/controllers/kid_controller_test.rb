require 'test_helper'

class KidControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get kid_index_url
    assert_response :success
  end

end
