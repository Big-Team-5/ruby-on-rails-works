class AddRolesToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :superadmin_role, :boolean
    add_column :users, :supervisor_role, :boolean
    add_column :users, :user_role, :boolean
  end
end
