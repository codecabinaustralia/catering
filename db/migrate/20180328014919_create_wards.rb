class CreateWards < ActiveRecord::Migration[5.0]
  def change
    create_table :wards do |t|
      t.string :name
      t.references :site, foreign_key: true

      t.timestamps
    end
  end
end
