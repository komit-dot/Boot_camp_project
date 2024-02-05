class BlogsController < ApplicationController
  
  def index
  	@blogs = Blog.preload(:student)
  end

end
