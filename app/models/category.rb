# Category Model File
class Category < ActiveRecord::Base
  has_many :suggestions
end
