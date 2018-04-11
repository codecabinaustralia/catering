require 'test_helper'

class OrderControllerTest < ActionDispatch::IntegrationTest
  test "should get build_order" do
    get order_build_order_url
    assert_response :success
  end

  test "should get display_orders" do
    get order_display_orders_url
    assert_response :success
  end

end
