class RemovePhotoUrlFromPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :photo_url, :string
  end
end
