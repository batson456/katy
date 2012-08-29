class PagesController < ApplicationController
  def page
  	@page = Page.where("UPPER(name) = UPPER(?)", params[:page]).first

  	respond_to do |format|
  		format.html #page.html.erb
  		format.json {render :json => @page}
  	end
  end
end
