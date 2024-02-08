module Validatable
  extend ActiveSupport::Concern

  included do
  	validates :name, :description, presence: true, uniqueness: true
    validates :description, length: {minimum: 10, maximum: 1000}

    scope :current_month, ->{where(created_at: Date.today.beginning_of_the_month...Date.today.created_at.end_of_month)}
  end

end