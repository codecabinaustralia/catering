class AddMealOptionsToPatientMeal < ActiveRecord::Migration[5.0]
  def change
    add_reference :patient_meals, :meal_option, foreign_key: true
  end
end
