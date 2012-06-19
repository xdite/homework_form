class Board < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :name
  validates_presence_of :name
  
  has_many :posts
  
end
