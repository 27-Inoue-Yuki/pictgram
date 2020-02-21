require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get comment" do
    get pages_comment_url
    assert_response :success
  end

end
