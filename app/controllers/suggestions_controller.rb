# Suggestions Controller
class SuggestionsController < ApplicationController
  before_action :set_city

  def index
    @suggestions = @city.suggestions
  end

  def new
    @suggestion = Suggestion.new
  end

  def create
    @suggestion = Suggestion.new(suggestion_params)
    @suggestion.city = City.find(params[:city_id])
    if @suggestion.save
      redirect_to city_path(@city.id), notice:
      'Suggestion was successfully added'
    else
      render :new
    end
  end

  def show
    @suggestion = @city.suggestions.find(params[:id])
  end

  private

  def set_city
    @city = City.find(params[:city_id])
  end

  def suggestion_params
    params.require(:suggestion).permit(:name, :ideas)
  end
end
