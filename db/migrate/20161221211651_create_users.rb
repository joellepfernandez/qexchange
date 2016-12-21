class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.integer :age
      t.string :facebook_url
      t.string :linkedin_url
      t.string :twitter_url
      t.string :instagram_url
      t.string :tumblr_url
      t.string :location
      t.string :photo_url

      t.timestamps null: false
    end
  end
end
