class AddColorToMealOptions < ActiveRecord::Migration[5.0]
  def change
    add_column :meal_options, :color, :string
  end
end
