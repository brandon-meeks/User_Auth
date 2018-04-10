class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
    	t.string :title
    	t.text :body

    	add_foreign_key :posts, :people

      t.timestamps null: false
    end
  end
end
