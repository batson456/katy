class Post < ActiveRecord::Base
  attr_accessible :content, :tags, :title
  validates :content, :title, :presence => true

end
