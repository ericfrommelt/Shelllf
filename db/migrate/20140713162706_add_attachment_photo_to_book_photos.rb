class AddAttachmentPhotoToBookPhotos < ActiveRecord::Migration
  def self.up
    change_table :book_photos do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :book_photos, :photo
  end
end
