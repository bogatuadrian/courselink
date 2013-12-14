class QuestionsController < ApplicationController

  def show
    @question = Question.find(params[:id])
  end

  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(params.require(:question).permit(:title, :content))
    @question.save

    redirect_to url_for(:controller => :welcome, :action => :show)
  end
end
