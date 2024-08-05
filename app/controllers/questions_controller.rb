class QuestionsController < ApplicationController
  def ask
  end

  def answer
    user_question = params[:ask]
    correct_answer = "Great !"
    question_mark = "Silly question, get dressed and go to work!"
    other = "I don't care, get dressed and go to work!"

    if user_question.upcase.include?("I AM GOING TO WORK")
      @answer = correct_answer
    elsif user_question&.include?("?")
      @answer = question_mark
    else
      @answer = other
    end
  end
end
