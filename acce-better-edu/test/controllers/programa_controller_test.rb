require 'test_helper'

class ProgramaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get programa_index_url
    assert_response :success
  end

end
