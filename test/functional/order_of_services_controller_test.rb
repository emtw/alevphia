require 'test_helper'

class OrderOfServicesControllerTest < ActionController::TestCase
  setup do
    @order_of_service = order_of_services(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:order_of_services)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order_of_service" do
    assert_difference('OrderOfService.count') do
      post :create, order_of_service: { css_id: @order_of_service.css_id, page_id: @order_of_service.page_id, user_id: @order_of_service.user_id }
    end

    assert_redirected_to order_of_service_path(assigns(:order_of_service))
  end

  test "should show order_of_service" do
    get :show, id: @order_of_service
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order_of_service
    assert_response :success
  end

  test "should update order_of_service" do
    put :update, id: @order_of_service, order_of_service: { css_id: @order_of_service.css_id, page_id: @order_of_service.page_id, user_id: @order_of_service.user_id }
    assert_redirected_to order_of_service_path(assigns(:order_of_service))
  end

  test "should destroy order_of_service" do
    assert_difference('OrderOfService.count', -1) do
      delete :destroy, id: @order_of_service
    end

    assert_redirected_to order_of_services_path
  end
end
