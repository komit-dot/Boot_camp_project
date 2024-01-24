class Student < ApplicationRecord
  has_many :blogs
  has_and_belongs_to_many :courses
  has_many :student_projects
  has_many :projects, through: :student_projects
  validates :first_name, :last_name, :email, presence: true

  def greeting_message
   puts("This is hello world from ruby.")
  end 

end
