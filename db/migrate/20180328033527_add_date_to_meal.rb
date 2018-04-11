class AddDateToMeal < ActiveRecord::Migration[5.0]
  def change
    add_column :meals, :available_date, :date
  end
end
