class CommentsController < ApplicationController
  before_action :set_city
  before_action :set_suggestion

  def index
    @comments = @suggestion.comments
  end

private
  def set_city
    @city = City.find(params[:city_id])
  end

  def set_suggestion
    @suggestion = @city.suggestions.find(params[:id])
  end

end
