require "test_helper"

class AddControllerTest < ActionDispatch::IntegrationTest
  test "should get summation" do
    get add_summation_url
    assert_response :success
  end
end
