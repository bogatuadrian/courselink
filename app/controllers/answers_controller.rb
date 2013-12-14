class AnswersController < ApplicationController

  def create
    answer = Answer.new(answer_params)
    answer.question_id = question_id
    answer.user_id = user_id
    answer.save

    redirect_to root_url
  end

  private

    def answer_params
      params.require(:answer).permit(:content)
    end

    def question_id
      params[:answer][:question_id].to_i
    end
    def user_id
      params[:answer][:user_id].to_i
    end
end
