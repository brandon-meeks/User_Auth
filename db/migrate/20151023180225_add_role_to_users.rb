class AddRoleToUsers < ActiveRecord::Migration[4.2]
  def change
  	add_column :people, :role, :string
  end
end
