require "test_helper"

class SubjectControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get subject_create_url
    assert_response :success
  end
end
