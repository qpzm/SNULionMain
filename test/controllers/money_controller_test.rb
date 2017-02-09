require 'test_helper'

class MoneyControllerTest < ActionDispatch::IntegrationTest
  test "should get money_check" do
    get money_money_check_url
    assert_response :success
  end

end
