require 'test_helper'

class PhrasesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get phrases_index_url
    assert_response :success
  end

end
