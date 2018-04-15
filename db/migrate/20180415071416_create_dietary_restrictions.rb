class CreateDietaryRestrictions < ActiveRecord::Migration[5.0]
  def change
    create_table :dietary_restrictions do |t|
      t.references :preloaded_meal, foreign_key: true
      t.string :food_texture

      t.timestamps
    end
  end
end
