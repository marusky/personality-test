class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:intro, :results]

  def home
    @user = User.new
  end

  def intro
    @first_question = Question.first
  end

  def results
    users_answers = Answer.where(user: current_user)

    users_answers.each do |answer|
      animals_order = answer.animals_order
      while animals_order.present?
        animal = animals_order.shift
        current_user.results[animal] += animals_order.length
      end
    end

    current_user.save!
  end
end
