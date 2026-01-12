require "test_helper"

class ServerTimeControllerTest < ActionDispatch::IntegrationTest
  test "should get server_time" do
    get server_time_server_time_url
    assert_response :success
  end
end
