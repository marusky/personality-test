class AnswersController < ApplicationController
  before_action :authenticate_user!

  def create
    options_ids_animals = Option.where(id: answer_params[:ordered_options_ids]).pluck(:id, :animal).to_h

    animals_order = []

    answer_params[:ordered_options_ids].each do |option_id|
      animals_order << options_ids_animals[option_id.to_i]
    end

    answer = Answer.find_by(user: current_user, question_id: answer_params[:question_id])

    if answer.present?
      answer.update!(animals_order: animals_order)
    else
      Answer.create!(animals_order: animals_order, user: current_user, question_id: answer_params[:question_id])
    end

    next_question = Question.find_by(id: answer_params[:question_id].to_i + 1)
    return redirect_to next_question if next_question.present?

    redirect_to results_path
  end

  private

  def answer_params
    params.require(:answer).permit(:question_id, ordered_options_ids: [])
  end
end
