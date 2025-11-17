class QuestionsController < ApplicationController
  def ask

  end

  def answer
    @question = params[:question].downcase
    if @question == "i am going to work"
      @coach = "Great!"
    elsif @question.end_with?("?")
      @coach = "Silly question, get dressed and go to work!"
    else
      @coach = "I don't care, get dressed and go to work!"
    end

  end

end
