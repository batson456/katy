class Post < ActiveRecord::Base
  attr_accessible :content, :tags, :title
  validates :content, :tags, :title, :presence => true

end
