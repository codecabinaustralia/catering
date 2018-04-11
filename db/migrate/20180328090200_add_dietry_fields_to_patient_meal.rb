class AddDietryFieldsToPatientMeal < ActiveRecord::Migration[5.0]
  def change
    add_column :patient_meals, :diet_texture, :string
    add_column :patient_meals, :fluid_consistency, :string
  end
end
