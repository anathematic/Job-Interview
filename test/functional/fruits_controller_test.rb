require 'test_helper'

class FruitsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fruits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fruit" do
    assert_difference('Fruit.count') do
      post :create, :fruit => { }
    end

    assert_redirected_to fruit_path(assigns(:fruit))
  end

  test "should show fruit" do
    get :show, :id => fruits(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => fruits(:one).to_param
    assert_response :success
  end

  test "should update fruit" do
    put :update, :id => fruits(:one).to_param, :fruit => { }
    assert_redirected_to fruit_path(assigns(:fruit))
  end

  test "should destroy fruit" do
    assert_difference('Fruit.count', -1) do
      delete :destroy, :id => fruits(:one).to_param
    end

    assert_redirected_to fruits_path
  end
end
