require "test_helper"

class EasysControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get easys_index_url
    assert_response :success
  end
end
