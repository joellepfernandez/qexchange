class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.integer :price
      t.string :location
      t.string :photo_url
      t.string :content
      t.string :category
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
