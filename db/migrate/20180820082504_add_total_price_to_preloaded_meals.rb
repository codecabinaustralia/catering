class AddTotalPriceToPreloadedMeals < ActiveRecord::Migration[5.0]
  def change
    add_column :preloaded_meals, :total_price, :decimal
  end
end
