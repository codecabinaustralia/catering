class AddGuestFieldsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :family_member, :string
    add_column :users, :boolean, :string
    add_reference :users, :patient, foreign_key: true
  end
end
