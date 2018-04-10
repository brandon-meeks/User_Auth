class CreatePeople < ActiveRecord::Migration[4.2]
  def change
    create_table :people do |t|
      t.string :email
      t.string :password
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
