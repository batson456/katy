class Post < ActiveRecord::Base
  attr_accessible :content, :tags, :title
end
