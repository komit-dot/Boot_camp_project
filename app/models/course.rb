class Course < ApplicationRecord
  has_and_belongs_to_many :students

  validates :name, :description, presence: true, uniqueness: true
  validates :description, length: {minimum: 10, maximum: 1000}
end
