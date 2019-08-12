require 'test_helper'

class SuperpowersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get superpowers_show_url
    assert_response :success
  end

  test "should get index" do
    get superpowers_index_url
    assert_response :success
  end

end
