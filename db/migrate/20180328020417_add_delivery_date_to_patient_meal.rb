class AddDeliveryDateToPatientMeal < ActiveRecord::Migration[5.0]
  def change
    add_column :patient_meals, :delivery_date, :date
  end
end
