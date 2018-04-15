class AddMealCategoryToPatientMeal < ActiveRecord::Migration[5.0]
  def change
    add_reference :patient_meals, :meal_category, foreign_key: true
  end
end
