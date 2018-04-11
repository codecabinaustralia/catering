require 'test_helper'

class MealOptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @meal_option = meal_options(:one)
  end

  test "should get index" do
    get meal_options_url
    assert_response :success
  end

  test "should get new" do
    get new_meal_option_url
    assert_response :success
  end

  test "should create meal_option" do
    assert_difference('MealOption.count') do
      post meal_options_url, params: { meal_option: { meal_category_id: @meal_option.meal_category_id, title: @meal_option.title } }
    end

    assert_redirected_to meal_option_url(MealOption.last)
  end

  test "should show meal_option" do
    get meal_option_url(@meal_option)
    assert_response :success
  end

  test "should get edit" do
    get edit_meal_option_url(@meal_option)
    assert_response :success
  end

  test "should update meal_option" do
    patch meal_option_url(@meal_option), params: { meal_option: { meal_category_id: @meal_option.meal_category_id, title: @meal_option.title } }
    assert_redirected_to meal_option_url(@meal_option)
  end

  test "should destroy meal_option" do
    assert_difference('MealOption.count', -1) do
      delete meal_option_url(@meal_option)
    end

    assert_redirected_to meal_options_url
  end
end
