class Comment < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :post
  belongs_to :user

  has_many :commentvotes
end
