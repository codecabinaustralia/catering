require 'test_helper'

class DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get IngredientTotals" do
    get dashboard_IngredientTotals_url
    assert_response :success
  end

end
