require 'test_helper'

class LectureControllerTest < ActionDispatch::IntegrationTest
  test "should get lecture" do
    get lecture_lecture_url
    assert_response :success
  end

end
