class Post < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :user
  has_many :comments

  has_many :postvotes
  has_many :users, :through => :postvotes
end
