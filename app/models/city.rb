class City < ActiveRecord::Base
  has_many :suggestions

  validates :city_name, :country_name, presence: true
end
