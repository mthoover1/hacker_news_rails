class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments

  has_many :postvotes
  has_many :users, :through => :postvotes
end
