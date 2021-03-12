require "test_helper"

class MembersControllerTest < ActionDispatch::IntegrationTest
  test "should get index,new,create" do
    get members_index,new,create_url
    assert_response :success
  end
end
