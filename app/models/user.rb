class User < ActiveRecord::Base
  has_secure_password
  has_and_belongs_to_many :books, dependent: :destroy
  validates :username, presence: true
  validates :username, uniqueness: true
end
