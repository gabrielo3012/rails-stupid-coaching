class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = coach_answer(@question)
  end

  def coach_answer(question)
    if question.downcase == 'i am going to work'
      'Great!'
    elsif question.ends_with?('?')
      'Silly question, get dressed and go to work!'
    elsif question.downcase == 'batata'
      'Batata, batata-inglesa, batatinha, pataca, escorva, papa, ou semilha?'
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
