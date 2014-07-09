class Book < ActiveRecord::Base
  validates :title, :author, :year_published, :publisher, presence: true
  has_and_belongs_to_many :users
end
