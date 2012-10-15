require 'test_helper'

class AdminInterfacesControllerTest < ActionController::TestCase
  setup do
    @admin_interface = admin_interfaces(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_interfaces)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_interface" do
    assert_difference('AdminInterface.count') do
      post :create, admin_interface: {  }
    end

    assert_redirected_to admin_interface_path(assigns(:admin_interface))
  end

  test "should show admin_interface" do
    get :show, id: @admin_interface
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_interface
    assert_response :success
  end

  test "should update admin_interface" do
    put :update, id: @admin_interface, admin_interface: {  }
    assert_redirected_to admin_interface_path(assigns(:admin_interface))
  end

  test "should destroy admin_interface" do
    assert_difference('AdminInterface.count', -1) do
      delete :destroy, id: @admin_interface
    end

    assert_redirected_to admin_interfaces_path
  end
end
