class Admin::BlogsController < ApplicationController
  
  def index
    #@blogs = Blog.includes(:student).references(:student).where('students.first_name= ?', 'Ravi')
    @blogs = Blog.all.page(params[:page])
    #@blogs = Blog.eager_load(:student).page(params[:page])
  end

  def new
   @blog = Blog.new 
  end

  def create
   @blog = Blog.new(blog_params)
    if @blog.save
      redirect_to admin_blogs_path, notice: "Student has been created successfully."
      puts("Data has been saved successfully.")
    else 
      render :new
    end 
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :content, :student_id)
  end

end
