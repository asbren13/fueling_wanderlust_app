class Suggestion < ActiveRecord::Base
  belongs_to :city
  has_many :comments

  validates :ideas, presence: true
end
