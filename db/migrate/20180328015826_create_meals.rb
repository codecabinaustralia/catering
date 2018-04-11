class CreateMeals < ActiveRecord::Migration[5.0]
  def change
    create_table :meals do |t|
      t.string :title
      t.references :meal_option, foreign_key: true
      t.text :notes

      t.timestamps
    end
  end
end
