class AddUsernameToUsers < ActiveRecord::Migration[4.2]
  def change
    add_column :people, :username, :string
  end
end
