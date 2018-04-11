class AddRealationshipToMeals < ActiveRecord::Migration[5.0]
  def change
    add_column :meals, :relationship_code, :string
  end
end
