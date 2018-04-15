class MealOption < ApplicationRecord
  belongs_to :meal_category
  has_many :patient_meal
end
