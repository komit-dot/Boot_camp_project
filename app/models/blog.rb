class Blog < ApplicationRecord
  paginates_per 10
  belongs_to :student

  validates :title, :content, presence: true
end
