class AddPreloadedMealIdToMeal < ActiveRecord::Migration[5.0]
  def change
    add_reference :meals, :preloaded_meal, foreign_key: true
  end
end
