require 'test_helper'

class PreloadedMealsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @preloaded_meal = preloaded_meals(:one)
  end

  test "should get index" do
    get preloaded_meals_url
    assert_response :success
  end

  test "should get new" do
    get new_preloaded_meal_url
    assert_response :success
  end

  test "should create preloaded_meal" do
    assert_difference('PreloadedMeal.count') do
      post preloaded_meals_url, params: { preloaded_meal: { ingredients: @preloaded_meal.ingredients, notes: @preloaded_meal.notes, nutritional_info: @preloaded_meal.nutritional_info, title: @preloaded_meal.title } }
    end

    assert_redirected_to preloaded_meal_url(PreloadedMeal.last)
  end

  test "should show preloaded_meal" do
    get preloaded_meal_url(@preloaded_meal)
    assert_response :success
  end

  test "should get edit" do
    get edit_preloaded_meal_url(@preloaded_meal)
    assert_response :success
  end

  test "should update preloaded_meal" do
    patch preloaded_meal_url(@preloaded_meal), params: { preloaded_meal: { ingredients: @preloaded_meal.ingredients, notes: @preloaded_meal.notes, nutritional_info: @preloaded_meal.nutritional_info, title: @preloaded_meal.title } }
    assert_redirected_to preloaded_meal_url(@preloaded_meal)
  end

  test "should destroy preloaded_meal" do
    assert_difference('PreloadedMeal.count', -1) do
      delete preloaded_meal_url(@preloaded_meal)
    end

    assert_redirected_to preloaded_meals_url
  end
end
