class WelcomeController < ApplicationController
  def index
    @cities = City.all.order("country_name ASC").order("city_name ASC")
  end

end
