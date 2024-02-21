class Course < ApplicationRecord
  paginates_per 5
  include Validatable
  has_and_belongs_to_many :students

end
