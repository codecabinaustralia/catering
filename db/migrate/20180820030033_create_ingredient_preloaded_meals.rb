class CreateIngredientPreloadedMeals < ActiveRecord::Migration[5.0]
  def change
    create_table :ingredient_preloaded_meals do |t|
      t.references :ingredient, foreign_key: true
      t.references :preloaded_meal, foreign_key: true

      t.timestamps
    end
  end
end
