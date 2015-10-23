require 'test_helper'

class ClsControllerTest < ActionController::TestCase
  setup do
    @cl = cls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cl" do
    assert_difference('Cl.count') do
      post :create, cl: { cid: @cl.cid, room: @cl.room, sec: @cl.sec, std: @cl.std, tid: @cl.tid }
    end

    assert_redirected_to cl_path(assigns(:cl))
  end

  test "should show cl" do
    get :show, id: @cl
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cl
    assert_response :success
  end

  test "should update cl" do
    patch :update, id: @cl, cl: { cid: @cl.cid, room: @cl.room, sec: @cl.sec, std: @cl.std, tid: @cl.tid }
    assert_redirected_to cl_path(assigns(:cl))
  end

  test "should destroy cl" do
    assert_difference('Cl.count', -1) do
      delete :destroy, id: @cl
    end

    assert_redirected_to cls_path
  end
end
