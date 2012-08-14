class Post < ActiveRecord::Base
  attr_accessible :content, :tags, :title, :image
  validates :content, :title, :presence => true

  has_attached_file :image, :styles => { :small => "300x770>"}
end
