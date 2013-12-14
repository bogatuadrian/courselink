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
    question = Question.new(question_params)
    question.course_id = course_id
    question.save

    redirect_to url_for(controller: :welcome, action: :show)
  end

  private
    def course_id
      params.require(:question).permit(:id)
    end

    def question_params
      params.require(:question).permit(:content)
    end
end
