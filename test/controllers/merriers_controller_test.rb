require 'test_helper'

class MerriersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get merriers_new_url
    assert_response :success
  end

end
