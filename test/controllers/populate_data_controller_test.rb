require 'test_helper'

class PopulateDataControllerTest < ActionDispatch::IntegrationTest
  test "should get initial_seed" do
    get populate_data_initial_seed_url
    assert_response :success
  end

end
