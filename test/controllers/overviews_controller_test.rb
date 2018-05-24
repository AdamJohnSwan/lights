require 'test_helper'

class OverviewsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get overviews_index_url
    assert_response :success
  end

  test "should get login" do
    get overviews_login_url
    assert_response :success
  end

end
