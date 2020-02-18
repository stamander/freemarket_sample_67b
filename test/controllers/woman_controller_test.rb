require 'test_helper'

class WomanControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get woman_index_url
    assert_response :success
  end

end
