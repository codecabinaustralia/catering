class CreatePreloadedMeals < ActiveRecord::Migration[5.0]
  def change
    create_table :preloaded_meals do |t|
      t.string :title
      t.text :ingredients
      t.text :nutritional_info
      t.text :notes

      t.timestamps
    end
  end
end
