class BlogController < ApplicationController
  def index
  	@posts = Post.paginate(:page => params[:page])
  end

  def show
  end
end
