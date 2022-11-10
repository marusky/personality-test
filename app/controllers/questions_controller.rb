class QuestionsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_question, only: :show

  def show
    @answer = Answer.new
    @options = @question.options.shuffle
    @previous_question = Question.find_by(id: @question.id.to_i - 1)
  end

  private

  def set_question
    @question = Question.includes(:options).find(params[:id])
  end
end
