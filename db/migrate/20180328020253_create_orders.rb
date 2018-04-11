class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.references :patient, foreign_key: true
      t.references :ward, foreign_key: true
      t.references :site, foreign_key: true
      t.date :delivery_date

      t.timestamps
    end
  end
end
