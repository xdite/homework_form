class Post < ActiveRecord::Base
  attr_accessible :title, :content
  
  belongs_to :board
end
