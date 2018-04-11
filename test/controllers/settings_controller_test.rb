require 'test_helper'

class SettingsControllerTest < ActionDispatch::IntegrationTest
  test "should get meals" do
    get settings_meals_url
    assert_response :success
  end

  test "should get patients" do
    get settings_patients_url
    assert_response :success
  end

  test "should get sites_and_wards" do
    get settings_sites_and_wards_url
    assert_response :success
  end

end
