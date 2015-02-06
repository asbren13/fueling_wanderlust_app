class Suggestion < ActiveRecord::Base
  belongs_to :city

  validates :ideas, presence: true
end
