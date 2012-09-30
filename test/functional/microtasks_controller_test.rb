require 'test_helper'

class MicrotasksControllerTest < ActionController::TestCase
  setup do
    @microtask = microtasks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:microtasks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create microtask" do
    assert_difference('Microtask.count') do
      post :create, microtask: { description: @microtask.description }
    end

    assert_redirected_to microtask_path(assigns(:microtask))
  end

  test "should show microtask" do
    get :show, id: @microtask
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @microtask
    assert_response :success
  end

  test "should update microtask" do
    put :update, id: @microtask, microtask: { description: @microtask.description }
    assert_redirected_to microtask_path(assigns(:microtask))
  end

  test "should destroy microtask" do
    assert_difference('Microtask.count', -1) do
      delete :destroy, id: @microtask
    end

    assert_redirected_to microtasks_path
  end
end
