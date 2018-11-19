require 'test_helper'

class ConvocatoriaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get convocatoria_index_url
    assert_response :success
  end

end
