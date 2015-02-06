class City < ActiveRecord::Base
  validates :city_name, :country_name, presence: true
end
