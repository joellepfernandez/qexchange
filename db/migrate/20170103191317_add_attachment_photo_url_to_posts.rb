class AddAttachmentPhotoUrlToPosts < ActiveRecord::Migration
  def self.up
    change_table :posts do |t|
      t.attachment :photo_url
    end
  end

  def self.down
    remove_attachment :posts, :photo_url
  end
end
