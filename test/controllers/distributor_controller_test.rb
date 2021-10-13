require "test_helper"

class DistributorControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get distributor_index_url
    assert_response :success
  end
end
