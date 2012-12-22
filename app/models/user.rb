class User < ActiveRecord::Base
  attr_accessible :name, :password, :password_confirmation
  validates :name, presence: true, uniqueness: true
  has_many :orders
  has_secure_password
end
