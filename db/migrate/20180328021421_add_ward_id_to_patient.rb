class AddWardIdToPatient < ActiveRecord::Migration[5.0]
  def change
    add_reference :patients, :ward, foreign_key: true
  end
end
