class PostsController < ApplicationController
  
  add_breadcrumb "HOME", :root_path

  def index
    require "html_truncator"
  	@posts = Post.paginate(:page => params[:page],:per_page => 3).order('created_at DESC')

  	respond_to do |format|
	    format.html  # index.html.erb
	    format.json  { render :json => @posts }
	  end
  end

  def show
  	@post = Post.find(params[:id])

    add_breadcrumb "POST", :post_path

  	respond_to do |format|
  		format.html # show.html.erb
  		format.json { render :json => @post}
  	end

  end

  def new
  	@post = Post.new

  	respond_to do |format|
	    format.html  # new.html.erb
	    format.json  { render :json => @post }
	  end
  end

  def create
  	@post = Post.new(params[:post])

  	respond_to do |format|
  		if @post.save
  			format.html { redirect_to @post, :notice => 'Post was successfully made' }
  			format.json  { render :json => @post, :status => :created, :location => @post }
  		else
	      format.html  { render :action => "new" }
	      format.json  { render :json => @post.errors, :status => :unprocessable_entity }	
  		end
  	end
  end
end
