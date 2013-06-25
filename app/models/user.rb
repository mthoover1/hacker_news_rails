class User < ActiveRecord::Base
  attr_accessible :username, :email, :password

  has_secure_password
  has_many :posts
  has_many :comments

  validates :username, :email, :uniqueness => :true, :presence => :true
  validates :password, :length => { :minimum => 3 }
end
