# City Model File
class City < ActiveRecord::Base
  has_many :suggestions, dependent: :destroy

  validates :city_name, :country_name, presence: true
end
