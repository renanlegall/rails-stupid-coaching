class QuestionsController < ApplicationController
  def answer
    @question = params[:query]
    @answer = coach_answer(@question)
  end

  def ask
  end


  def coach_answer(your_message)
    exit if your_message.capitalize == "I am going to work right now!"
    if your_message.end_with?("?")
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end

end
