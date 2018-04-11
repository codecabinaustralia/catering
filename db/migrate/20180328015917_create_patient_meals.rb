class CreatePatientMeals < ActiveRecord::Migration[5.0]
  def change
    create_table :patient_meals do |t|
      t.references :patient, foreign_key: true
      t.references :meal, foreign_key: true

      t.timestamps
    end
  end
end
