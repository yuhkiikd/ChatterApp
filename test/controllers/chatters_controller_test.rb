require 'test_helper'

class ChattersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get chatters_index_url
    assert_response :success
  end

end
