# Suggestion Model
class Suggestion < ActiveRecord::Base
  CATEGORIES = %w{ 18+ Outdoors Food Entertainment Sightseeing Combination}

  belongs_to :city
  has_many :comments, dependent: :destroy

  validates :ideas, presence: true
  validates :category, inclusion: {in: CATEGORIES, message: "is Invalid"}
end
