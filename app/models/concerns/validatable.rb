module Validatable
  extend ActiveSupport::Concern

  included do
  	validates :name, :description, presence: true, uniqueness: true
    validates :description, length: {minimum: 10, maximum: 1000}
  end

end