class Student < ApplicationRecord
  has_many :blogs
  before_update  :greeting_message
  validates :first_name, :last_name, :email, presence: true

  def greeting_message
   puts("This is hello world from ruby.")
  end 

end
