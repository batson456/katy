class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :prepare_archives

  def prepare_archives
  	@post_months = Post.all.group_by{|post| post.created_at.beginning_of_month}
  end
end
