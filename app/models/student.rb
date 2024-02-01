class Student < ApplicationRecord
  has_many :blogs
  has_and_belongs_to_many :courses
  has_many :student_projects
  has_many :projects, through: :student_projects
  validates :first_name, :last_name, :email, presence: true

  after_commit :display_student_age

  def display_student_age
    if self.datee_of_birth.present?
      age = Date.today.year - self.datee_of_birth.year
      puts("============Age of the student is:#{age}===========")
    else
      puts("================Age of the student is not calculated without date of birth===========.")
    end
  end 

end
