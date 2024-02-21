class BlogsController < ApplicationController
  
  def index
    #@blogs = Blog.includes(:student).references(:student).where('students.first_name= ?', 'Ravi')
    @blogs = Blog.all.page(params[:page])
    #@blogs = Blog.eager_load(:student)
  end

end
