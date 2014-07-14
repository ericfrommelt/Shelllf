class BookPhoto < ActiveRecord::Base
  belongs_to :book

  #specify that the photo is a paperclip file attachment
  has_attached_file :photo, :default_url => "/assets/missing.jpg"
  #validate the content type - required for paperclip to function
  validates_attachment_content_type :photo, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

end
