class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @last_string = @question.last
    case
    when @question == "I am going to work"
      @coaching = "Great!"
    when @question.last == "?"
      @coaching = "Silly question, get dressed and go to work!"
    else
      @coaching = "I don't care, get dressed and go to work!"
    end
  end
end
