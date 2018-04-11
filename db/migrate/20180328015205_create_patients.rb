class CreatePatients < ActiveRecord::Migration[5.0]
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.string :room_number
      t.text :allergies
      t.text :diet_type
      t.text :diet_texture
      t.text :fluid_consistency
      t.text :fluid_restriction
      t.text :likes
      t.text :dislikes
      t.text :extra_information

      t.timestamps
    end
  end
end
