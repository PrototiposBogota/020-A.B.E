require 'test_helper'

class UniversidadControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get universidad_index_url
    assert_response :success
  end

end
