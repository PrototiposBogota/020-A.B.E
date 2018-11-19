require 'test_helper'

class TipodocumentoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tipodocumento_index_url
    assert_response :success
  end

end
