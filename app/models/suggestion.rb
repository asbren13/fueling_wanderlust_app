class Suggestion < ActiveRecord::Base
  belongs_to :city
  has_many :comments, dependent: :destroy

  validates :ideas, presence: true
end
