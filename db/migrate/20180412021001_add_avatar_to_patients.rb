class AddAvatarToPatients < ActiveRecord::Migration[5.0]
  def change
    add_column :patients, :avatar, :string
  end
end
