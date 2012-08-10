class Post < ActiveRecord::Base
  attr_accessible :content, :tags, :title, :image
  validates :content, :title, :presence => true

end
