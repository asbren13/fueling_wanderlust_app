# Comment Model File
class Comment < ActiveRecord::Base
  belongs_to :suggestion

  validates :body, presence: true
end
