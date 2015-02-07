class CommentsController < ApplicationController
  before_action :set_city
  before_action :set_suggestion

  def index
    @comments = @suggestion.comments
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = @suggestion.comments.build(comment_params)
    if @comment.save
      redirect_to city_suggestion_comments_path(@comment, @suggestion, @city), notice: 'Comment was successfully created.'
    else
      render :new
    end
  end

private
  def set_city
    @city = City.find(params[:city_id])
  end

  def set_suggestion
    @suggestion = @city.suggestions.find(params[:suggestion_id])
  end

  def comment_params
    params.require(:comment).permit(:body)
  end
end
