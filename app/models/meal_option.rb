class MealOption < ApplicationRecord
  belongs_to :meal_category
  belongs_to :patient_meal
end
