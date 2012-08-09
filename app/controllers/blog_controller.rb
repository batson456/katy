class BlogController < ApplicationController
  def index
  	@posts = Post.paginate(:page => params[:page],:per_page => 3)
  end

  def show
  end
end
