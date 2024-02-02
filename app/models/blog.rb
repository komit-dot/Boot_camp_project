class Blog < ApplicationRecord
  belongs_to :student

  validates :title, :content, presence: true
end
