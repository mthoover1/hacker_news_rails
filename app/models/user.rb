class User < ActiveRecord::Base
  include BCrypt

  has_many :posts
  has_many :comments
  has_many :postvotes
  has_many :commentvotes

  validates :username, :email, :uniqueness => :true, :presence => :true
  validates :password, :presence => :true, :length => { :minimum => 3 }


  def self.create_user(user)
    User.create(username: user[:username], email: user[:email], password: BCrypt::Password.create(user[:password]))
  end

  def self.authenticated?(username, password)
    if user = User.find_by_username(username)
      return true if BCrypt::Password.new(user.password) == password
    end
  end
end
