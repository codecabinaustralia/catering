class AddOrderIdToPatientMeal < ActiveRecord::Migration[5.0]
  def change
    add_reference :patient_meals, :order, foreign_key: true
  end
end
