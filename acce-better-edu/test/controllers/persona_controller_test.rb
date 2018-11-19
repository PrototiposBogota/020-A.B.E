require 'test_helper'

class PersonaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get persona_index_url
    assert_response :success
  end

end
