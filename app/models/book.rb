class Book < ActiveRecord::Base
  validates :title, :author, :year_published, :publisher, presence: true
  has_and_belongs_to_many :users
  has_many :book_photos
  accepts_nested_attributes_for :book_photos
end
