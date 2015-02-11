# Suggestion Model
class Suggestion < ActiveRecord::Base
  belongs_to :city
  belongs_to :category
  has_many :comments, dependent: :destroy

  validates :ideas, presence: true
end
