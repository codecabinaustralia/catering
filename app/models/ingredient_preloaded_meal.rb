class IngredientPreloadedMeal < ApplicationRecord
  belongs_to :ingredient, required: false
  belongs_to :preloaded_meal, required: false
end
