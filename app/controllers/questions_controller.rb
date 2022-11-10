class QuestionsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_question, only: :show

  def show
    @answer = Answer.new
    @options = @question.options.shuffle
  end

  private

  def set_question
    @question = Question.includes(:options).find(params[:id])
  end
end
