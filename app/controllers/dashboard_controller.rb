class DashboardController < ApplicationController
  def IngredientTotals
  	if params[:filter_from_date].present?
  		@date_from = params[:filter_from_date].to_date
  	else
  		@date_from = Time.now.strftime("%Y-%m-%d").to_date
  	end

  	if params[:filter_to_date].present?
  		@date_to = params[:filter_to_date].to_date
  	else
  		@date_to = Time.now.strftime("%Y-%m-%d").to_date
  	end

  	@orders = Order.where(delivery_date: @date_from.beginning_of_day..@date_to.end_of_day).all.pluck(:id)
  	@patient_meals = PatientMeal.where(order_id: @orders).all.pluck(:meal_id)
  	@meals = Meal.where(id: @patient_meals).all
  	@preloaded_meals = PreloadedMeal.where(id: @meals.pluck(:preloaded_meal_id)).all
  	@preloaded_ingredients = IngredientPreloadedMeal.where(preloaded_meal_id: @preloaded_meals.pluck(:id)).all

  end
end
