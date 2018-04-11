class CreateMealOptions < ActiveRecord::Migration[5.0]
  def change
    create_table :meal_options do |t|
      t.string :title
      t.references :meal_category, foreign_key: true

      t.timestamps
    end
  end
end
