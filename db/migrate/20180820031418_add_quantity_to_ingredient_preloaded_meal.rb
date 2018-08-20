class AddQuantityToIngredientPreloadedMeal < ActiveRecord::Migration[5.0]
  def change
    add_column :ingredient_preloaded_meals, :quantity, :integer
  end
end
