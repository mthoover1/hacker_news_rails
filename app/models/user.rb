class User < ActiveRecord::Base
  attr_accessible :username, :email, :password

  has_secure_password
  has_many :posts
  has_many :comments

  validates :username, :email, :uniqueness => :true, :presence => :true
  validates :password, :length => { :minimum => 3 }

  def self.create_user(user)
    User.create(username: user[:username], email: user[:email], password: BCrypt::Password.create(user[:password]))
  end

  def self.authenticate(username, password)
    if user = User.find_by_username(username)
      return true if BCrypt::Password.new(user.password) == password
    end
  end
end
