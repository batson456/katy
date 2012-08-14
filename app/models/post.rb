class Post < ActiveRecord::Base
  attr_accessible :content, :tags, :title, :image
  validates :content, :title, :presence => true

  has_attached_file :image, :styles => { :small => "770x225#"},
  									:url => '/assets/posts/:id/:style/:basename.:extension',
  									:path => ':rails_root/public/assets/posts/:id/:style/:basename.:extension'
end
