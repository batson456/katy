class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :prepare_archives, :prepare_pages

  def prepare_archives
  	@post_months = Post.all.group_by{|post| post.created_at.beginning_of_month}
  end

  def prepare_pages
  	@pages_all = Page.all
  end
end
