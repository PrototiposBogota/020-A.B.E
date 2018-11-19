require 'test_helper'

class CiudadControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ciudad_index_url
    assert_response :success
  end

end
