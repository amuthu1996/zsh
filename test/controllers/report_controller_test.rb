require 'test_helper'

class ReportControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get student" do
    get :student
    assert_response :success
  end

  test "should get management" do
    get :management
    assert_response :success
  end

end
