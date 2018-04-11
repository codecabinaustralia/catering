class AddStartDateToMeals < ActiveRecord::Migration[5.0]
  def change
    add_column :meals, :the_date, :date
  end
end
