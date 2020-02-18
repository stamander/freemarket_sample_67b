require 'test_helper'

class CosmeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cosme_index_url
    assert_response :success
  end

end
