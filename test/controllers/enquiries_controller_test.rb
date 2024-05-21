require "test_helper"

class EnquiriesControllerTest < ActionDispatch::IntegrationTest
  test "should get contact_us" do
    get enquiries_contact_us_url
    assert_response :success
  end
end
