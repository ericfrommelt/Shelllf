class Book < ActiveRecord::Base
  validates :title, :author, :year_published, :publisher, presence: true
  has_and_belongs_to_many :users

  #specify that the photo is a paperclip file attachment
  has_attached_file :photo
  #validate the content type - required for paperclip to function
  validates_attachment_content_type :photo, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
