require 'test_helper'

class ExamControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get seating" do
    get :seating
    assert_response :success
  end

  test "should get eligibility" do
    get :eligibility
    assert_response :success
  end

end
