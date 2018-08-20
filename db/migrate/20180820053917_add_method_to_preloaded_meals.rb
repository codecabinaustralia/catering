class AddMethodToPreloadedMeals < ActiveRecord::Migration[5.0]
  def change
    add_column :preloaded_meals, :method, :text
  end
end
