require "test_helper"

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  test "should get hello" do
    get articles_hello_url
    assert_response :success
  end
end
